abstract class TokenSource {
  Future<void> saveToken(String token);
  Future<String> getToken();
}
