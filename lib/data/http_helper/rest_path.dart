abstract class RestPath {
  static const String scheme = 'https';
  static const String host = 'host';

  static const String endpoint = '/api/endpoint';

  static final String baseUrl = Uri(scheme: scheme, host: host).toString();
}
