import 'package:flutter_bloc/domain/model/request/login_request.dart';
import 'package:flutter_bloc/domain/model/request/signup_request.dart';
import 'package:flutter_bloc/domain/model/response/login_response.dart';
import 'package:flutter_bloc/domain/model/response/signup_response.dart';

abstract class LoginUC {
  Future<LoginResponse> login(LoginRequest loginRequest);
}

abstract class SignupUC {
  Future<SignupResponse> signup(SignupRequest signupRequest);
}
