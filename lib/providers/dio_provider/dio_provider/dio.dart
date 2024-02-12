import 'package:dio/dio.dart';
import 'package:thestuckhunter/utils/logger_intersector.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio.g.dart';

@riverpod
Dio dio(DioRef ref) {
  final dio = Dio();
  dio.interceptors.add(LoggerInterceptor());
  return dio;
}
