import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;

final post =
    (String endpoint, Map<String, String> headers, Map<String, String> body) =>
        http.post(endpoint, headers: headers, body: body);

const LOGIN_URL = 'https://dev.nutzindia.com/2cheap/wp-json/jwt-auth/v1/token';
const RF_URL =
    'https://dev.nutzindia.com/2cheap/wp-json/jwt-auth/v1/token/refresh';

void main() {
  test('new token', () async {
    final newToken = await http.get(RF_URL, headers: {
      'Authorization':
          'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvZGV2Lm51dHppbmRpYS5jb21cLzJjaGVhcCIsImlhdCI6MTU5Nzk0NDA4OCwibmJmIjoxNTk3OTQ0MDg4LCJleHAiOjE1OTg1NDg4ODgsImRhdGEiOnsidXNlciI6eyJpZCI6MTJ9fX0.A2W457HIXNz7Vi6mmhGS3W3ssGmYH5jg6F68PF_OZ7o'
    });
    print(json.decode(newToken.body));
  });
}
