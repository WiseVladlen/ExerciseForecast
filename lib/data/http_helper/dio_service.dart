import 'package:dio/dio.dart';

class DioService {
  const DioService({required this.client});

  final Dio client;

  void dispose() => client.close();
}
