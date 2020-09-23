import 'package:flutter_bloc/domain/model/models.dart';
import 'package:flutter_bloc/domain/model/response/signup_response.dart';

abstract class AuthRepository {
  Future<LoginResponse> login(LoginRequest loginRequest);
  Future<SignupResponse> signup(SignupRequest signupRequest);
}
