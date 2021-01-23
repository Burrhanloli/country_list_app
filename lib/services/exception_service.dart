import 'dart:io';

import 'package:country_list_app/models/network_exceptions.dart';
import 'package:dio/dio.dart';

class ExceptionService {
  static final ExceptionService _singleton = ExceptionService._internal();

  factory ExceptionService() {
    return _singleton;
  }

  ExceptionService._internal();

  NetworkExceptions handleResponse(int statusCode) {
    switch (statusCode) {
      case 400:
      case 401:
      case 403:
        return const NetworkExceptions.unauthorizedRequest();
        break;
      case 404:
        return const NetworkExceptions.notFound("Not found");
        break;
      case 409:
        return const NetworkExceptions.conflict();
        break;
      case 408:
        return const NetworkExceptions.requestTimeout();
        break;
      case 500:
        return const NetworkExceptions.internalServerError();
        break;
      case 503:
        return const NetworkExceptions.serviceUnavailable();
        break;
      default:
        final responseCode = statusCode;
        return NetworkExceptions.defaultError(
          "Received invalid status code: $responseCode",
        );
    }
  }

  NetworkExceptions getDioException(dynamic error) {
    if (error is Exception) {
      try {
        NetworkExceptions networkExceptions;
        if (error is DioError) {
          switch (error.type) {
            case DioErrorType.CANCEL:
              networkExceptions = const NetworkExceptions.requestCancelled();
              break;
            case DioErrorType.CONNECT_TIMEOUT:
              networkExceptions = const NetworkExceptions.requestTimeout();
              break;
            case DioErrorType.DEFAULT:
              networkExceptions =
                  const NetworkExceptions.noInternetConnection();
              break;
            case DioErrorType.RECEIVE_TIMEOUT:
              networkExceptions = const NetworkExceptions.sendTimeout();
              break;
            case DioErrorType.RESPONSE:
              networkExceptions = handleResponse(error.response.statusCode);
              break;
            case DioErrorType.SEND_TIMEOUT:
              networkExceptions = const NetworkExceptions.sendTimeout();
              break;
          }
        } else if (error is SocketException) {
          networkExceptions = const NetworkExceptions.noInternetConnection();
        } else {
          networkExceptions = const NetworkExceptions.unexpectedError();
        }
        return networkExceptions;
      } on FormatException catch (_) {
        // Helper.printError(e.toString());
        return const NetworkExceptions.formatException();
      } catch (_) {
        return const NetworkExceptions.unexpectedError();
      }
    } else {
      if (error.toString().contains("is not a subtype of")) {
        return const NetworkExceptions.unableToProcess();
      } else {
        return const NetworkExceptions.unexpectedError();
      }
    }
  }

  String getErrorMessage(NetworkExceptions networkExceptions) {
    var errorMessage = "";
    networkExceptions.when(notImplemented: () {
      errorMessage = "Not Implemented";
    }, requestCancelled: () {
      errorMessage = "Request Cancelled";
    }, internalServerError: () {
      errorMessage = "Internal Server Error";
    }, notFound: (String reason) {
      errorMessage = reason;
    }, serviceUnavailable: () {
      errorMessage = "Service unavailable";
    }, methodNotAllowed: () {
      errorMessage = "Method Allowed";
    }, badRequest: () {
      errorMessage = "Bad request";
    }, unauthorizedRequest: () {
      errorMessage = "Unauthorized request";
    }, unexpectedError: () {
      errorMessage = "Unexpected error occurred";
    }, requestTimeout: () {
      errorMessage = "Connection request timeout";
    }, noInternetConnection: () {
      errorMessage = "No internet connection";
    }, conflict: () {
      errorMessage = "Error due to a conflict";
    }, sendTimeout: () {
      errorMessage = "Send timeout in connection with API server";
    }, unableToProcess: () {
      errorMessage = "Unable to process the data";
    }, defaultError: (String error) {
      errorMessage = error;
    }, formatException: () {
      errorMessage = "Unexpected error occurred";
    }, notAcceptable: () {
      errorMessage = "Not acceptable";
    });
    return errorMessage;
  }
}
