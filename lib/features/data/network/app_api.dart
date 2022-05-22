import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:softcent_task/core/base/constant/constants.dart';
import 'package:softcent_task/features/domain/models/base_response.dart';

part 'app_api.g.dart';

@RestApi(baseUrl: AppConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET("/4572d649-fda0-4c84-991d-08ba0961205d")
  Future<BaseResponse> getTransactions();
}