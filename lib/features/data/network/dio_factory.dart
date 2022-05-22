import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:softcent_task/core/base/constant/constants.dart';

const String applicationJson = "application/json";
const String contentType = "content-type";

class DioFactory {
  Future<Dio> getDio() async {
    Dio dio = Dio();
    int timeOut = 60 * 1000; // 1 min

    Map<String, String> headers = {
      contentType: applicationJson,
    };

    dio.options = BaseOptions(
        baseUrl: AppConstants.baseUrl,
        connectTimeout: timeOut,
        receiveTimeout: timeOut,
        headers: headers);

    dio.interceptors.add(PrettyDioLogger(
        requestHeader: true, requestBody: true, responseHeader: true));
    return dio;
  }
}
