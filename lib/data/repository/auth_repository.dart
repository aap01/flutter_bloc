import 'package:flutter_bloc/domain/model/response/signup_response.dart';
import 'package:flutter_bloc/domain/model/response/login_response.dart';
import 'package:flutter_bloc/domain/model/request/signup_request.dart';
import 'package:flutter_bloc/domain/model/request/login_request.dart';
import 'package:flutter_bloc/domain/repository/auth_repository.dart';

class AuthRepostoryImpl implements AuthRepository {
  @override
  LoginResponse login(LoginRequest loginRequest) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  SignupResponse signup(SignupRequest signupRequest) {
    // TODO: implement signup
    throw UnimplementedError();
  }
}
