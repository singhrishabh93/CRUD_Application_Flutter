import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class Api {
  static const baseUrl = "http://10.0.25.19/api/";

  //post method
  static addUser(Map pdata) async {
    print(pdata);
    var url = Uri.parse("${baseUrl}add_user");
    try {
      final res = await http.post(url, body: pdata);

      if (res.statusCode == 200) {
        var data = jsonDecode(res.body.toString());
        print(data);
      } else {
        print("Failed to get response");
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  //get method
  static getUser() async {
    try {
      final res = await http.get(Uri.parse("uri"));

      if (res.statusCode == 200) {
      } else {}
    } catch (e) {
      print(e.toString());
    }
  }
}
