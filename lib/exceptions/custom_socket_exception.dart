class CustomSocketException implements Exception{
  final String msg;
  final int statusCode;

  CustomSocketException({required this.statusCode, required this.msg});

  @override
  String toString() {
    return '$msg\n\n Erro: $statusCode\n\n';
  }
}