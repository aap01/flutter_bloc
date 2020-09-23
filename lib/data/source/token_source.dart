import 'package:shared_preferences/shared_preferences.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/domain/source/token_source.dart';

class TokenSourceImpl implements TokenSource {
  static const _TOKEN = 'TOKEN';

  Future<SharedPreferences> futurePref;
  TokenSourceImpl({
    @required this.futurePref,
  });

  @override
  Future<String> getToken() async {
    final pref = await futurePref;
    return pref.getString(_TOKEN);
  }

  @override
  Future<void> saveToken(String token) async {
    final pref = await futurePref;
    pref.setString(_TOKEN, token);
  }
}
