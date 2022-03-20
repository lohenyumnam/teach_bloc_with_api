import 'package:dio/dio.dart';
import 'package:teach_bloc_with_api/services/endpoints.dart';

var options = BaseOptions(
  baseUrl: baseURL,
  connectTimeout: 5000,
  receiveTimeout: 3000,
);

final dio = Dio(options);
