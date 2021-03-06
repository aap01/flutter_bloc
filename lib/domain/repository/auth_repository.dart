import 'package:flutter_bloc/domain/model/request/login_request.dart';
import 'package:flutter_bloc/domain/model/request/signup_request.dart';
import 'package:flutter_bloc/domain/model/response/login_response.dart';
import 'package:flutter_bloc/domain/model/response/signup_response.dart';

abstract class AuthRepository {
  Future<LoginResponse> login(LoginRequest loginRequest);
  Future<SignupResponse> signup(SignupRequest signupRequest);
}
