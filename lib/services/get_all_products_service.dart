import 'dart:convert';

import 'package:http/http.dart';
import 'package:storeapp/helper/api.dart';
import 'package:storeapp/models/model.dart';

class AllProuctsService {
  Future<List<ProductModel>> getAllProducts() async {
    // // ignore: unused_local_variable
    // Response response = await get(Uri.parse('https://fakestores.com/products'));
    Response response =
        await Api().get(myurl: 'https://fakestores.com/products');
    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      List<ProductModel> productList = [];
      for (int i = 0; i < data.length; i++) {
        productList.add(ProductModel.fromJson(data[i]));
      }
      return productList;
    } else {
      throw Exception('there is a problem with status code ');
    }
  }
}
