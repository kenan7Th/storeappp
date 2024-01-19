import 'dart:convert';

import 'package:storeapp/models/model.dart';
import 'package:http/http.dart';

class CategoryServie {
  Future<List<ProductModel>> getCategoryProducts(
      {required String categoryName}) async {
    // ignore: unused_local_variable
    Response response = await get(
        Uri.parse('https://fakestores.com/products/category/$categoryName'));
    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      List<ProductModel> productList = [];
      for (int i = 0; i < data.length; i++) {
        productList.add(ProductModel.fromJson(data[i]));
      }
      return productList;
    } else {
      throw Exception('there is a problem is a status code');
    }
  }
}
