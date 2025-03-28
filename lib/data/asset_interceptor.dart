import 'package:dio/dio.dart';
import 'package:flutter/services.dart';

class AssetInterceptor extends Interceptor {
  @override
  Future onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    if (options.uri.toString().startsWith('asset://')) {
      try {
        final assetPath = options.uri.toString().replaceFirst('asset://', '');
        final String content = await rootBundle.loadString(assetPath);
        return handler.resolve(
          Response(
            requestOptions: options,
            data: content,
            statusCode: 200,
          ),
        );
      } catch (e) {
        return handler.reject(
          DioException(
            requestOptions: options,
            error: 'Failed to load asset: $e',
          ),
        );
      }
    }
    return handler.next(options);
  }
}
