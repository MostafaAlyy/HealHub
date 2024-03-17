import 'end_points.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../features/login/data/models/login_response.dart';
import '../../features/login/data/models/login_request_body.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: EndPoints.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(EndPoints.loginEndPoint)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );
}
