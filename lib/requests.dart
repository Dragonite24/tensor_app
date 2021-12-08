import 'package:http/http.dart' as http;
import 'package:tensor_app/models/classmate_model.dart';
import 'dart:convert';

import 'models/userpage_model.dart';

/// REST взаимодействие с сервером
class HttpRequests {
  final String url = 'https://reqres.in/api/';

  Future<List<Classmate>> getClassmates() async {
    final response = await http.get(Uri.parse(url + 'users'),
        headers: {'Content-type': 'application/json'});
    if (response.statusCode == 200) {
      final users = usersFromJson(response.body);
      return users.data;
    } else {
      throw ("getClassmates bad status code: " +
          response.statusCode.toString());
    }
  }
}
