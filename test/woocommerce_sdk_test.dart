import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;

final post =
    (String endpoint, Map<String, String> headers, Map<String, String> body) =>
        http.post(endpoint, headers: headers, body: body);

const LOGIN_URL = 'https://dev.nutzindia.com/2cheap/wp-json/jwt-auth/v1/token';

void main() {
  test('getting cart', () async {
    final login = await post(LOGIN_URL, {'Authorization': 'B'},
        {'username': 'sri', 'password': '@A1234567aaa'});
    print(json.decode(login.body));
  });
}
