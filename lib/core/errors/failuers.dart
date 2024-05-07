import 'package:dio/dio.dart';

abstract class Failures {
  final String errorMessage;

  const Failures(this.errorMessage);
}

class ServerFailure extends Failures {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout');
      case DioExceptionType.badCertificate:
        return ServerFailure("");
      case DioExceptionType.badResponse:
        return ServerFailure.frombadResponse(dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Request canceled');
      case DioExceptionType.connectionError:
        return ServerFailure('internet connection error ');
      case DioExceptionType.unknown:
        return ServerFailure('Receive timeout');
    }
  }

  factory ServerFailure.frombadResponse (int statusCode , dynamic response){
    if (statusCode == 400 || statusCode == 401 || statusCode == 403){
      return ServerFailure(response["error"]["message"]);

    }else if (statusCode == 404){
      return ServerFailure("your request not found , plz try again later!");
    } else if (statusCode == 500){
      return ServerFailure("Internal server error ");

    }else {
      return ServerFailure("Opps there was an error");
    }
  }
}
