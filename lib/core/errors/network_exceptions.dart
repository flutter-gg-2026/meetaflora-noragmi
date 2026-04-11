import 'dart:async';
import 'dart:io';
import 'package:dio/dio.dart';
import 'failure.dart';


// This class converts any error/exception into a Failure object

class FailureExceptions {
  static Failure getException(Object error){
    print(error);
    return switch (error){
      DioException e => _handleDio(e),
      SocketException _ => const NetworkFailure(),
      FormatException _ => const FormatFailure(),
      TimeoutException _ => const TimeoutFailure(),
      _ => UnKnownFailure(error.toString()),
    };
  }

  // Handle Dio (network) errors
  static Failure _handleDio(DioException error){
    return switch (error.type){
      DioExceptionType.connectionTimeout => const TimeoutFailure(
        'Connection timeout'
      ),

      DioExceptionType.sendTimeout => const TimeoutFailure('Send timeout'),
      DioExceptionType.receiveTimeout => const TimeoutFailure('Receive timeout',
      ),
      DioExceptionType.connectionError => const NetworkFailure(),
      DioExceptionType.cancel => const CancelledFailure(),
      DioExceptionType.badResponse => _handleStatusCode(
        error.response?.statusCode,
      ),
      _ => const UnKnownFailure('Network error'),
    };
  }

// Handle HTTP status codes
static Failure _handleStatusCode(int? code){
  return switch (code){

400 => const ValidationFailure('Bad request'),
401 => const UnauthorizedFailure(),
403 => const UnauthorizedFailure('Access denied'),
404 => const NotFoundFailure(),
429 => const ValidationFailure('Too many requests'),
500 => const ServerFailure(),
503 => const ServerFailure('Service unavailable'),
_ => ServerFailure('Server error : $code'),

  };
}
}