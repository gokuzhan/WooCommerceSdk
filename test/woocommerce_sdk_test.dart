import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:woocommerce_sdk/utils/console.dart';

textGet(dynamic response) async {
  ConsoleLog().httpGet(response.request.url.toString());
}

textDel(String endpoint) async {
  try {
    http.Response res = await http.delete(endpoint);
    print(ConsoleLog().httpDelete(res.request.url.toString()));
    num count = 0;
    res.bodyBytes.forEach((bytes) {
      count = count + bytes;
    });
  } on SocketException {
    print("⚠️No Internet !");
  }
}

textPost(String endpoint, body) async {
  try {
    http.Response res = await http.post(endpoint, body: body);
    print("WooCommerceSdk Log : " +
        ConsoleLog().httpPost(res.request.url.toString()));
    num count = 0;
    res.bodyBytes.forEach((bytes) {
      count = count + bytes;
    });
  } on SocketException {
    print("⚠️No Internet !");
  }
}

void main() {
  test('adds one to input values', () async {
//    print(ansi_demo());
//    print(ConsoleLog().httpGet('/user/get'));
//    print(ConsoleLog().httpPost('/user/add'));
//    print(ConsoleLog().httpPut('/user/update'));
//    print(ConsoleLog().httpPatch('/user/action'));
//    print(ConsoleLog().httpDelete('/user/action/like'));
//    print(ConsoleLog().httpDelete('/user/action/like/:id/suppress/:parent'));

    await textPost(
        'https://reqres.in/api/users', {"name": "morpheus", "job": "leader"});
    await textDel('https://reqres.in/api/users/2');
  });
}
