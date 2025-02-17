import 'package:advanced_flutter_arabic/app/constants.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../domain/models/responses.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: Constants.baseUrl)
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @POST('/customers/login')
  Future<Authentication> login(
      @Field('email') String email,
      @Field('password') String password,
      @Field('ime') String ime,
      @Field('device_type') String deviceType);
}
