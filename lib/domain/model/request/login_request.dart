import 'dart:convert';

import 'package:flutter/material.dart';

class LoginRequest {
  String username;
  String password;
  LoginRequest({
    @required this.username,
    @required this.password,
  });

  Map<String, dynamic> toMap() {
    return {
      'username': username,
      'password': password,
    };
  }

  factory LoginRequest.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return LoginRequest(
      username: map['username'],
      password: map['password'],
    );
  }

  String toJson() => json.encode(toMap());

  factory LoginRequest.fromJson(String source) =>
      LoginRequest.fromMap(json.decode(source));
}
