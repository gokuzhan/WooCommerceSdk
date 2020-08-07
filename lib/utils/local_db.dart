import 'package:shared_preferences/shared_preferences.dart';

class LocalDatabaseService {
  updateSecurityToken(String token) async {
    (await SharedPreferences.getInstance()).setString('token', token);
  }

  deleteSecurityToken() async {
    (await SharedPreferences.getInstance()).remove('token');
  }

  Future<String> getSecurityToken() async {
    final token = (await SharedPreferences.getInstance()).getString('token');
    if (token == null) {
      return '0';
    }
    return token;
  }
}
