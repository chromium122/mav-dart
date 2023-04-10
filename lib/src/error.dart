import 'package:dio/dio.dart';

class MavError extends Error {
  String message;
  String? exceptionMessage;
  String? exceptionType;

  MavError({
    required this.message,
    this.exceptionMessage,
    this.exceptionType,
  });

  factory MavError.fromDioError(DioError error) {
    if (error.response == null || error.response!.data == null) {
      return MavError(message: "Unknown");
    }

    Map data = error.response!.data as Map;
    return MavError(
      message: data['message'],
      exceptionMessage: data['exceptionMessage'],
      exceptionType: data['exceptionType'],
    );
  }
}
