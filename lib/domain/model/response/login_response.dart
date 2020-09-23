import 'package:flutter_bloc/domain/model/response/generic_response.dart';

class LoginResponse extends GenericResponse {
  LoginBody body;
}

class LoginBody {
  String token;
}
