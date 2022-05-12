/// HTTP异常
class HttpException implements Exception {
  final int? _code;
  final String? _message;
  int get code => _code ?? -1;
  String get message => _message ?? runtimeType.toString();

  HttpException([this._message, this._code]);
}

/// 客户端请求异常
class BadRequestException extends HttpException {
  BadRequestException({int? code, String? message}) : super(message, code);
}

/// 服务端业务异常
class BadServiceException extends HttpException {
  BadServiceException({int? code, String? message}) : super(message, code);
}

class UnknownException extends HttpException {
  UnknownException([String? message]) : super(message);
}

class CancelException extends HttpException {
  CancelException([String? message]) : super(message);
}

class NetworkException extends HttpException {
  NetworkException({int? code, String? message}) : super(message, code);
}

class UnauthorisedException extends HttpException {
  UnauthorisedException({int? code = 401, String? message}) : super(message);
}
