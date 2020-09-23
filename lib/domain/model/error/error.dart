import 'dart:convert';
import 'package:flutter/material.dart';

class Error {
  String message;
  String httpStatus;
  String errorEnum;
  Error({
    @required this.message,
    @required this.httpStatus,
    @required this.errorEnum,
  });

  factory Error.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Error(
      message: map['message'],
      httpStatus: map['httpStatus'],
      errorEnum: map['enum'],
    );
  }

  factory Error.fromJson(String source) => Error.fromMap(json.decode(source));
}
