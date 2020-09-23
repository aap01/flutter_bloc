import 'package:flutter_bloc/domain/model/request/login_request.dart';
import 'package:flutter_bloc/domain/model/request/signup_request.dart';
import 'package:flutter_bloc/domain/model/response/login_response.dart';
import 'package:flutter_bloc/domain/model/response/signup_response.dart';
import 'package:flutter_bloc/domain/repository/auth_repository.dart';
import 'package:flutter_bloc/domain/service/auth_service.dart';
import 'package:flutter_bloc/domain/source/token_source.dart';
import 'package:meta/meta.dart';

class AuthRepostoryImpl implements AuthRepository {
  TokenSource tokenSource;
  AuthService authService;

  AuthRepostoryImpl({@required this.tokenSource, @required this.authService});

  @override
  Future<LoginResponse> login(LoginRequest loginRequest) async {
    final response = await authService.login(loginRequest);
    final loginResponse = LoginResponse.fromJson(response.body);
    tokenSource.saveToken(loginResponse.body.token);
    return loginResponse;
  }

  @override
  Future<SignupResponse> signup(SignupRequest signupRequest) {
    // TODO: implement signup
    throw UnimplementedError();
  }
}
