import 'package:dio/dio.dart';

class NetworkHelper {
  final int? connectTimeout;
  NetworkHelper({this.connectTimeout});

  Future<T> get<T>({
    required String path,
    required T Function(dynamic data) onSuccess,
    required T Function(dynamic error) onError,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
    bool isRawResult = false,
    String? baseUrl,
  }) async {
    final Dio _client = Dio();
    try {
      final response = await _client.get(
        path,
        options: Options(headers: headers),
        queryParameters: queryParameters,
      );

      return isRawResult
          ? onSuccess(response.data)
          : onSuccess(response.data['content']);
    } on DioError catch (e) {
      print('${e.message} ${e.response} for $path');
      print(e.toString());
      return onError(e);
    } catch (e) {
      print(e.toString());
      return onError(e);
    }
  }
}
