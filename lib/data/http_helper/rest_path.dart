abstract class RestPath {
  static const String scheme = 'http';
  static const String host = '5.166.240.123';
  static const int port = 8111;

  static const String endpoint = '/img';

  static final String baseUrl = Uri(scheme: scheme, host: host, port: port).toString();
}
