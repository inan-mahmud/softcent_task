import 'package:dio/dio.dart';
import 'package:softcent_task/core/error/failures.dart';
import 'package:softcent_task/resources/strings_manager.dart';

enum DataSource {
  success,
  noContent,
  badRequest,
  forbidden,
  unauthorised,
  notFound,
  internalServerError,
  connectionTimeout,
  cancel,
  receiveTimeout,
  sendTimeout,
  cacheError,
  noInternetConnection,
  defaultValue
}

class ErrorHandler implements Exception {
  Failure? failure;

  ErrorHandler.handle(dynamic error) {
    if (error is DioError) {
      failure = _handleError(error);
    } else {
      failure = DataSource.defaultValue.getFailure();
    }
  }

  Failure _handleError(DioError error) {
    switch (error.type) {
      case DioErrorType.connectTimeout:
        return DataSource.connectionTimeout.getFailure();
      case DioErrorType.sendTimeout:
        return DataSource.sendTimeout.getFailure();
      case DioErrorType.receiveTimeout:
        return DataSource.receiveTimeout.getFailure();
      case DioErrorType.response:
        switch (error.response?.statusCode) {
          case ResponseCode.badRequest:
            return DataSource.badRequest.getFailure();
          case ResponseCode.forbidden:
            return DataSource.forbidden.getFailure();
          case ResponseCode.unauthorised:
            return DataSource.unauthorised.getFailure();
          case ResponseCode.notFound:
            return DataSource.notFound.getFailure();
          case ResponseCode.internalServerError:
            return DataSource.internalServerError.getFailure();
          default:
            return DataSource.defaultValue.getFailure();
        }
      case DioErrorType.cancel:
        return DataSource.cancel.getFailure();
      case DioErrorType.other:
        return DataSource.defaultValue.getFailure();
    }
  }
}

extension DataSourceExtension on DataSource {
  Failure getFailure() {
    switch (this) {
      case DataSource.badRequest:
        return Failure(
            ResponseCode.badRequest, ResponseMessage.badRequestError);
      case DataSource.forbidden:
        return Failure(ResponseCode.forbidden, ResponseMessage.forbiddenError);
      case DataSource.unauthorised:
        return Failure(
            ResponseCode.unauthorised, ResponseMessage.unauthorizedError);
      case DataSource.notFound:
        return Failure(ResponseCode.notFound, ResponseMessage.notFoundError);
      case DataSource.internalServerError:
        return Failure(ResponseCode.internalServerError,
            ResponseMessage.internalServerError);
      case DataSource.connectionTimeout:
        return Failure(
            ResponseCode.connectionTimeout, ResponseMessage.timeoutError);
      case DataSource.cancel:
        return Failure(ResponseCode.cancel, ResponseMessage.cancel);
      case DataSource.receiveTimeout:
        return Failure(
            ResponseCode.receiveTimeout, ResponseMessage.receiveTimeout);
      case DataSource.sendTimeout:
        return Failure(ResponseCode.sendTimeout, ResponseMessage.sendTimeout);
      case DataSource.cacheError:
        return Failure(ResponseCode.cacheError, ResponseMessage.cacheError);
      case DataSource.noInternetConnection:
        return Failure(ResponseCode.noInternetConnection,
            ResponseMessage.noInternetConnection);
      case DataSource.defaultValue:
        return Failure(ResponseCode.defaultCode, ResponseMessage.defaultError);
      default:
        return Failure(ResponseCode.defaultCode, ResponseMessage.defaultError);
    }
  }
}

class ResponseCode {
  static const int responseSuccess = 200;
  static const int noContent = 201;
  static const int badRequest = 400;
  static const int forbidden = 403;
  static const int unauthorised = 401;
  static const int notFound = 404;
  static const int internalServerError = 500;

  static const int defaultCode = -1;
  static const int connectionTimeout = -2;
  static const int cancel = -3;
  static const int receiveTimeout = -4;
  static const int sendTimeout = -5;
  static const int cacheError = -6;
  static const int noInternetConnection = -7;
}

class ResponseMessage {
  static const String success = AppStrings.success;
  static const String noContent = AppStrings.noContent;
  static const String badRequestError = AppStrings.badRequestError;
  static const String forbiddenError = AppStrings.forbiddenError;
  static const String unauthorizedError = AppStrings.unauthorizedError;
  static const String notFoundError = AppStrings.notFoundError;
  static const String internalServerError = AppStrings.internalServerError;
  static const String defaultError = AppStrings.defaultError;
  static const String timeoutError = AppStrings.timeoutError;
  static const String cancel = AppStrings.defaultError;
  static const String receiveTimeout = AppStrings.timeoutError;
  static const String sendTimeout = AppStrings.timeoutError;
  static const String cacheError = AppStrings.defaultError;
  static const String noInternetConnection = AppStrings.noInternetError;
}

class ApiInternalStatus {
  static const int success = 0;
  static const int failures = 1;
}
