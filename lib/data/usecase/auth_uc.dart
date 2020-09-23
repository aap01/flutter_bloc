import 'package:flutter_bloc/domain/model/response/signup_response.dart';
import 'package:flutter_bloc/domain/model/request/signup_request.dart';
import 'package:meta/meta.dart';

import 'package:flutter_bloc/domain/model/request/login_request.dart';
import 'package:flutter_bloc/domain/model/response/login_response.dart';
import 'package:flutter_bloc/domain/repository/auth_repository.dart';
import 'package:flutter_bloc/domain/usecase/auth_uc.dart';

class LoginUCImpl implements LoginUC {
  AuthRepository authRepository;
  LoginUCImpl({
    @required this.authRepository,
  });

  @override
  Future<LoginResponse> login(LoginRequest loginRequest) {
    return authRepository.login(loginRequest);
  }
}

class SignupUCImpl implements SignupUC {
  AuthRepository authRepository;
  SignupUCImpl({
    this.authRepository,
  });

  @override
  Future<SignupResponse> signup(SignupRequest signupRequest) {
    return authRepository.signup(signupRequest);
  }
}
