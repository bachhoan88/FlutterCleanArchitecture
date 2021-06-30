import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:flutter_clean_architecture/src/data/model/token_data_model.dart';
import 'package:flutter_clean_architecture/src/data/model/user_data_model.dart';
import 'package:flutter_clean_architecture/src/data/remote/response/register_response.dart';

part 'user_api.g.dart';

@RestApi()
abstract class UserApi {
  factory UserApi(Dio dioBuilder) = _UserApi;

  @POST('/authenticate')
  Future<TokenDataModel> refreshToken(@Body() UserDataModel userDataModel);

  @POST('/register')
  Future<RegisterResponse> register(@Body() UserDataModel userDataModel);
}