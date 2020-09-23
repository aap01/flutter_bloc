import 'package:flutter_bloc/domain/model/models.dart';
import 'package:flutter_bloc/domain/model/response/signup_response.dart';

abstract class AuthRepository {
  LoginResponse login(LoginRequest loginRequest);
  SignupResponse signup(SignupRequest signupRequest);
}
