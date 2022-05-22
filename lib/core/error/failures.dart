import 'package:softcent_task/core/error/error_handler.dart';

class Failure {
  int code;
  String message;

  Failure(this.code, this.message);
}

class DefaultFailure extends Failure {
  DefaultFailure()
      : super(ResponseCode.defaultCode, ResponseMessage.defaultError);
}
