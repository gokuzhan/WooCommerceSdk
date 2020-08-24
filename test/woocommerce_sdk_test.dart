import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:woocommerce_sdk/helpers/Number.dart';
import 'package:woocommerce_sdk/models/Cart/WCCartTotal.dart';

final jsonString = {
  "currency_code": "INR",
  "currency_symbol": "₹",
  "currency_minor_unit": 2,
  "currency_decimal_separator": ".",
  "currency_thousand_separator": ",",
  "currency_prefix": "₹",
  "currency_suffix": "",
  "total_items": "2400",
  "total_items_tax": "0",
  "total_fees": "0",
  "total_fees_tax": "0",
  "total_discount": "0",
  "total_discount_tax": "0",
  "total_shipping": "0",
  "total_shipping_tax": "0",
  "total_price": "2400",
  "total_tax": "0",
  "tax_lines": []
};

void main() {
  test('cart check', () async {
    WCCartTotal cartTotal = WCCartTotal.fromJson(jsonString);
//    print(cartTotal.totalPrice.substring(
//        0, cartTotal.totalPrice.length - cartTotal.currencyMinorUnit));
    print(Number.price(cartTotal.totalPrice, cartTotal.currencyMinorUnit));
  });
  Random rand = Random();
  List<int> codeUnits = List.generate(10, (index) {
    return rand.nextInt(26) + 97;
  });

  /// Random string uniquely generated to identify each signed request
  String nonce = String.fromCharCodes(codeUnits);
  print(nonce);
}
