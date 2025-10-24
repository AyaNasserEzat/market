import 'package:dio/dio.dart';
import 'package:pure_soft/core/database/api/api_consumer.dart';
import 'package:pure_soft/core/database/api/end_point.dart';
import 'package:pure_soft/core/errors/exceptions.dart';

class DioConcumer extends ApiConsumer {
  final Dio dio;

  DioConcumer({required this.dio}) {
    dio.options.baseUrl = EndPoint.baseUrl;
    dio.interceptors.add(
      LogInterceptor(
        request: true,
        responseBody: true,
        logPrint: (obj) {
          // هنا بيتطبع اللوجز كلها
          print(obj);
        },
      ),
    );
  }
  @override
  Future delete(
    String path, {
    Object? data,
    Map<String, dynamic>? querParameters,
  }) async{
 try {
      var res = await dio.delete(
        path,
        data: data,
        queryParameters: querParameters,
      );
      return res.data;
    } on DioException catch (e) {
      handleDioException(e);
    }
  }

  @override
  Future get(
    String path, {
    Object? data,
    Map<String, dynamic>? querParameters,
  }) async {
    try {
      var res = await dio.get(
        path,
        data: data,
        queryParameters: querParameters,
      );
      return res.data;
    } on DioException catch (e) {
      handleDioException(e);
    }
  }

  @override
  Future patch(
    String path, {
    Object? data,
    Map<String, dynamic>? querParameters,
    bool isFormData = false,
  }) async{
 try {
      var res = await dio.patch(
        path,
        data: data,
        queryParameters: querParameters,
      );
      return res.data;
    } on DioException catch (e) {
      handleDioException(e);
    }
  }

  @override
  Future post(
    String path, {
    Object? data,
    Map<String, dynamic>? querParameters,
    bool isFormData = false,
  }) async{
    try {
      var res = await dio.post(
        path,
        data: data,
        queryParameters: querParameters,
      );
      return res.data;
    } on DioException catch (e) {
      handleDioException(e);
    }
  }
}
