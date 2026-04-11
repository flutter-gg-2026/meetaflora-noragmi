import 'package:equatable/equatable.dart';

//Base failure class - all failures extends this
abstract class Failure extends Equatable {
  final String message;
  const Failure([this.message = 'Something went wrong']);

  @override
  List<Object?> get props => [message];
}

//Network failures
class ServerFailure extends Failure {
  const ServerFailure([super.message = 'Server error']);
}

class NetworkFailure extends Failure {
  const NetworkFailure([super.message = 'No internet connection']);
}

class TimeoutFailure extends Failure {
  const TimeoutFailure([super.message = 'Connection timeout']);
}

class NotFoundFailure extends Failure {
  const NotFoundFailure([super.message = 'Not found']);
}

//Auth failures
class UnauthorizedFailure extends Failure {
  const UnauthorizedFailure([super.message = 'Unauthorized']);
}

// Data failures
class ValidationFailure extends Failure {
  const ValidationFailure([super.message = 'Validation failed']);
}

class EmptyDataFailure extends Failure {
  const EmptyDataFailure([super.message = 'No data available']);
}

class FormatFailure extends Failure {
  const FormatFailure([super.message = 'Invalid data format']);
}

// Device failures
class PermissionFailure extends Failure {
  const PermissionFailure([super.message = 'Permission denied']);
}

class CameraFailure extends Failure {
  const CameraFailure([super.message = 'Camera error']);
}

//AI failure
class AiFailure extends Failure {
  const AiFailure([super.message = 'AI processing error']);
}

//Generic failures
class UnKnownFailure extends Failure {
  const UnKnownFailure([super.message = 'UnKnown error']);
}

class CancelledFailure extends Failure {
  const CancelledFailure([super.message = '']);
}
