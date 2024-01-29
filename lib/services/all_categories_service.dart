import 'package:http/http.dart';
import 'dart:convert';

class AllCategoriesService {
  Future<List<dynamic>> getallcategoires() async {
    Response response =
        await get(Uri.parse('https://fakestores.com/categories'));
    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);

      return data;
    } else {
      throw Exception('there is a problem with status code ');
    }
  }
}
