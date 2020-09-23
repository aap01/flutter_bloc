// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$AuthService extends AuthService {
  _$AuthService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  final definitionType = AuthService;

  Future<Response> login(LoginRequest loginRequest) {
    final $url = '/login';
    final $request = Request('POST', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> signup(SignupRequest signupRequest) {
    final $url = '/signup';
    final $request = Request('POST', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }
}
