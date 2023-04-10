import "package:dio/dio.dart";
import "package:uuid/uuid.dart";

import "models/data/currency.dart";
import "models/data/user.dart";
import 'models/station/station.dart';
import 'models/station/station_info.dart';
import 'models/train/train_info.dart';
import "error.dart";

class MavAPI {
  final dio = Dio(BaseOptions(
    headers: {
      "UserSessionId": Uuid().v4(),
      "Language": "en",
    },
    baseUrl: "https://jegy-a.mav.hu/IK_API_PROD/api",
  ));
  String? _userToken;

  MavAPI();

  set language(String value) => dio.options.headers['Language'] = value;

  String get language => dio.options.headers['Language'];
  String get sessionId => dio.options.headers['UserSessionId'];

  Future<List<Station>> getStations() async {
    try {
      var resp = await dio.post("/OfferRequestApi/GetStationList");
      List<Station> stations = [];
      for (Map<String, dynamic> stationMap in resp.data) {
        stations.add(Station.fromJson(stationMap));
      }

      return stations;
    } on DioError catch (error) {
      throw MavError.fromDioError(error);
    }
  }

  Future<StationInfo> getStationInfo(
      String stationCode, DateTime travelDate) async {
    try {
      Map<String, dynamic> data = {
        'stationNumberCode': stationCode,
        'travelDate': travelDate.toIso8601String(),
        'maxCount': '9999999', // jegy.mav.hu is ezt csinalja
        'minCount': '0',
        'type': 'StationInfo'
      };
      var resp = await dio.post("/InformationApi/GetTimetable", data: data);

      return StationInfo.fromJson(resp.data['stationSchedulerDetails']);
    } on DioError catch (error) {
      throw MavError.fromDioError(error);
    }
  }

  Future<List<TrainInfo>> getTrainInfo(
      {String? trainId, String? trainCode, DateTime? travelDate}) async {
    travelDate ??= DateTime.now();
    assert(trainId != null || trainCode != null);

    try {
      Map<String, dynamic> data = {
        'trainId': trainId,
        'trainNumber': trainCode,
        'travelDate': travelDate.toIso8601String(),
        'maxCount': '9999999',
        'minCount': '0',
        'type': 'TrainInfo'
      };

      var resp = await dio.post("/InformationApi/GetTimetable", data: data);

      return resp.data['trainSchedulerDetails']
          .map((e) => TrainInfo.fromJson(e))
          .toList();
    } on DioError catch (error) {
      throw MavError.fromDioError(error);
    }
  }

  Future<User> login(String email, String password) async {
    try {
      var resp = await dio.post("/ProfileApi/GetUserToken", data: {
        'userEmail': email,
        'password': password,
      });

      _userToken = resp.data["userTokenXml"];
      dio.options.headers["UserTokenXml"] = _userToken;

      return User.fromJson(resp.data);
    } on DioError catch (error) {
      throw MavError.fromDioError(error);
    }
  }

  Future<void> forgottenPassword(String email) async {
    try {
      await dio.post("/ProfileApi/ForgottenPasswordRequest");
      return;
    } on DioError catch (error) {
      throw MavError.fromDioError(error);
    }
  }

  // dedicated to annon#6415
  Future<double> getExchangeRate(String currency) async {
    try {
      Response resp = await dio.post("/BaseDataApi/GetExchangeRate",
          queryParameters: {'currencyKey': currency});
      return resp.data;
    } on DioError catch (error) {
      throw MavError.fromDioError(error);
    }
  }

  Future<List<Currency>> getCurrencies() async {
    try {
      Response resp = await dio.post("/BaseDataApi/GetCurrencies");
      List<Currency> currencies = [];
      for (Map<String, dynamic> currency in resp.data["currencies"]) {
        currencies.add(Currency.fromJson(currency));
      }

      return currencies;
    } on DioError catch (error) {
      throw MavError.fromDioError(error);
    }
  }
}
