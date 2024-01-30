import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Api {
  Future<dynamic> get({required String myurl, @required String? token}) async {
    Map<String, String> headers = {};

    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }

    http.Response response = await http.get(Uri.parse(myurl), headers: headers);

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('There is a problem with the status code');
    }
  }

  Future<dynamic> post(
      {required String url,
      @required dynamic body,
      @required String? token}) async {
    Map<String, String> headers = {};

    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }

    http.Response response =
        await http.post(Uri.parse(url), body: body, headers: headers
            //{
            //   'title':'test',
            //   'price':13.5,
            //   'description':'lorem ipsum set',
            //   'image':'https://i.pravatar.cc',
            //   'category':'electronic',

            // }

            // headers: {
            //   'Accept': 'application/joson',
            //   'Content_Type': 'application/x-ww-from-urlencoded',
            //   'Authorization': "Bearer "
            // }
            );

    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      return data;
    } else {
      throw Exception(
          'there is a problem with status code ${response.statusCode} with body ${jsonDecode(response.body)}');
    }
  }

  Future<dynamic> put(
      {required String url,
      @required dynamic body,
      @required String? token}) async {
    Map<String, String> headers = {};
    headers.addAll({'Content-Type': 'application/x-www-form-urlencoded'});

    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }

    http.Response response =
        await http.post(Uri.parse(url), body: body, headers: headers
            //{
            //   'title':'test',
            //   'price':13.5,
            //   'description':'lorem ipsum set',
            //   'image':'https://i.pravatar.cc',
            //   'category':'electronic',

            // }

            // headers: {
            //   'Accept': 'application/joson',
            //   'Content_Type': 'application/x-ww-from-urlencoded',
            //   'Authorization': "Bearer "
            // }
            );

    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      return data;
    } else {
      throw Exception(
          'there is a problem with status code ${response.statusCode} with body ${jsonDecode(response.body)}');
    }
  }
}
