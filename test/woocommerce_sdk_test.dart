import 'package:flutter_test/flutter_test.dart';
import 'package:woocommerce_sdk/woocommerce_sdk.dart';

void main() {
  test('adds one to input values', () async {
    WooCommerceSdk wooCommerceSdk = WooCommerceSdk(
        baseUrl: "https://dev.nutzindia.com/2cheap/",
        consumerKey: "ck_f0fbfb985f24f87a0ebe2ba7295f6e6b0d840497",
        consumerSecret: "cs_06cd293f6c3fd6ea7564b3db2874237d706ef246",
        isDebug: true);
    final payload = {"password": "12345678", "phoneNumber": "1234567890"};

    final response = await wooCommerceSdk.authenticateWithJwt(
        username: "sri", password: "@A1234567aaa");
    print(await response.customerId);
  });
}
