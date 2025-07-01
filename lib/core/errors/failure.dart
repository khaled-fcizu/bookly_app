import 'package:dio/dio.dart';

abstract class Failure {
  String errMessage;
  Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);
  factory ServerFailure.fromDioExeption(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('connet to server is timeout');
      case DioExceptionType.sendTimeout:
        return ServerFailure('send to server is timeout');

      case DioExceptionType.receiveTimeout:
        return ServerFailure('recieve from server is timeout');
      case DioExceptionType.badCertificate:
        return ServerFailure('ssh certificate un accepted');

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioException.response!.statusCode!,
          dioException.response!.data,
        );
      case DioExceptionType.cancel:
        return ServerFailure('the request to server is canceled');

      case DioExceptionType.connectionError:
        return ServerFailure(
          'check internet connection ,and try agian later!',
        );

      case DioExceptionType.unknown:
        return ServerFailure('Unknown error, please try again later');

      default:
        return ServerFailure(
          'Oops there was an error, please try again later',
        );
    }
  }
  factory ServerFailure.fromResponse(
    int statusCode,
    dynamic response,
  ) {
    if (statusCode == 401 || statusCode == 403 || statusCode == 400) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure(
        'Your request not found, please try later!',
      );
    } else if (statusCode == 500) {
      return ServerFailure(
        'Internal server error, please try later!',
      );
    } else {
      return ServerFailure(
        'Oops there was an error, please try again later',
      );
    }
  }
}
