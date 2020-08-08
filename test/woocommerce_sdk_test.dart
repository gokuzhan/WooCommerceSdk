import 'package:flutter_test/flutter_test.dart';
import 'package:woocommerce_sdk/helpers/Jwt.dart';

void main() {
  test('adds one to input values', () async {
    final token =
        "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.Bp5m6eBRlpT-wQOY88Hvv7qtDAQ36cLDGLX0GLD0tCw";
    final Jwt = WCJwtDecoder(token: token);
  });
}
