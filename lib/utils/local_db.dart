import 'package:shared_preferences/shared_preferences.dart';

class LocalDatabaseService {
  updateSecurityToken(String token) async {
//    await SharedPreferences.getInstance().write(key: 'token', value: token);
    (await SharedPreferences.getInstance()).setString('token', token);
  }

  deleteSecurityToken() async {
//    await SharedPreferences.getInstance().delete(key: 'token');
    (await SharedPreferences.getInstance()).remove('token');
  }

  Future<String> getSecurityToken() async {
//    String token = await SharedPreferences.getInstance().read(key: 'token');
    var token = (await SharedPreferences.getInstance()).getString('token');
    if (token == null) {
      token = '0';
    }
    return token;
  }
}
