import 'package:shared_preferences/shared_preferences.dart';

class LocalDatabaseService {
  updateSecurityAccess(String token) async {
    (await SharedPreferences.getInstance()).setString('access_token', token);
  }

  deleteSecurityToken() async {
    (await SharedPreferences.getInstance()).remove('access_token');
    (await SharedPreferences.getInstance()).remove('refresh_token');
  }

  Future<String> getSecurityAccess() async {
    final token =
        (await SharedPreferences.getInstance()).getString('access_token');
    if (token == null) {
      return '0';
    }
    return token;
  }
}
