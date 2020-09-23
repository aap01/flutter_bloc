import 'package:chopper/chopper.dart';
import 'package:flutter_bloc/domain/model/request/login_request.dart';
import 'package:flutter_bloc/domain/model/request/signup_request.dart';

part 'auth_service.chopper.dart';

@ChopperApi()
abstract class AuthService extends ChopperService {
  @Post(path: '/login')
  Future<Response> login(LoginRequest loginRequest);

  @Post(path: '/signup')
  Future<Response> signup(SignupRequest signupRequest);
}
