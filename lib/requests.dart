import 'package:http/http.dart' as http;
import 'dart:convert';

/// REST взаимодействие с сервером
class HttpRequests {
  final String url = '';

  Future<void> getUsers() async {
    final response = await http.get(Uri.parse(url + 'route'));
    if (response.statusCode == 200) {
    } else {
      throw ("getCategories bad status code: " +
          response.statusCode.toString());
    }
  }
}
