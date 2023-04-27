class Session {
  Session._privateConstructor();

  static final Session instance = Session._privateConstructor();

  String? authToken;
  String? userId;

  void setAuthToken(String token) {
    authToken = token;
  }

  String? getAuthToken() {
    return authToken;
  }

  void setUserId(String id) {
    userId = id;
  }

  String? getUserId() {
    return userId;
  }
}
