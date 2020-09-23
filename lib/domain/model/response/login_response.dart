import 'dart:convert';

import 'package:flutter_bloc/domain/model/response/generic_response.dart';

class LoginResponse extends GenericResponse {
  LoginBody body;
  LoginResponse({
    this.body,
  });

  Map<String, dynamic> toMap() {
    return {
      'body': body?.toMap(),
    };
  }

  factory LoginResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return LoginResponse(
      body: LoginBody.fromMap(map['body']),
    );
  }

  String toJson() => json.encode(toMap());

  factory LoginResponse.fromJson(String source) =>
      LoginResponse.fromMap(json.decode(source));
}

class LoginBody {
  String token;
  LoginBody({
    this.token,
  });

  Map<String, dynamic> toMap() {
    return {
      'token': token,
    };
  }

  factory LoginBody.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return LoginBody(
      token: map['token'],
    );
  }

  String toJson() => json.encode(toMap());

  factory LoginBody.fromJson(String source) =>
      LoginBody.fromMap(json.decode(source));
}
