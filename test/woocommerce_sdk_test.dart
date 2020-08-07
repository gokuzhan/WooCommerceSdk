import 'package:flutter_test/flutter_test.dart';
import 'package:woocommerce_sdk/helpers/Jwt.dart';

void main() {
  test('adds one to input values', () async {
    final Jwt = WCJwtDecoder(
        token:
            "eyJ0eXAiOiJKV1QiCJhbGciOiJIUzI1NiJ9.ejE1OTY4MTc5MDcsInN1YiI6MTJ9.YWHY28YpWtYIWTSd_IBqztNOFQAGgv4tjLhESPwDftg");

    print(await Jwt.decode());
  });
}
