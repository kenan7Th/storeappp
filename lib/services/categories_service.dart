import 'package:http/http.dart';
import 'dart:convert';

class AllCategoriesService {
  Future<List<dynamic>> getallcategoires() async {
    Response response =
        await get(Uri.parse('https://fakestores.com/categories'));
    List<dynamic> data = jsonDecode(response.body);

    return data;
  }
}
