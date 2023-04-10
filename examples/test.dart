import 'dart:convert';
import 'dart:io';

import 'package:mav_api/mav_api.dart';

void main() async {
  MavAPI mavAPI = MavAPI();
  File stationsCacheFile =
      File("/home/chromium/dev/mav-api/stations_cache.json");
  Map stationsCache = jsonDecode(await stationsCacheFile.readAsString());

  late List<Station> stations;

  if (stationsCache["expiry"] == null ||
      DateTime.parse(stationsCache["expiry"]).isBefore(DateTime.now())) {
    print("Loading stations...");
    stations = await mavAPI.getStations();
    stationsCacheFile.writeAsString(jsonEncode({
      'expiry': DateTime.now().add(Duration(hours: 12)).toIso8601String(),
      'stations': stations.map((s) => s.toJson()).toList(),
    }));
  } else {
    stations = [];
    for (Map<String, dynamic> station in stationsCache["stations"]) {
      stations.add(Station.fromJson(station));
    }
  }

  List<Currency> currencies = await mavAPI.getCurrencies();
  for (Currency currency in currencies) {
    print("${currency.key} ${await mavAPI.getExchangeRate(currency.key)}");
  }
}
