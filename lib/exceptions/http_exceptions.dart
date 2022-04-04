class HttpEcxeptions implements Exception {
  final String msg;
  final int statusCode;

  HttpEcxeptions({
    required this.msg,
    required this.statusCode,
  });

  @override
  String toString(){
    return msg;
  }
}
