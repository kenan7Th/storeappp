import 'package:storeapp/helper/api.dart';
import 'package:storeapp/models/model.dart';

class AllProuctsService {
  Future<List<ProductModel>> getAllProducts() async {
    // // ignore: unused_local_variable
    // Response response = await get(Uri.parse('https://fakestores.com/products'));
    List<dynamic> data =
        await Api().get(myurl: 'https://fakestoresapi.com/products');

    List<ProductModel> productList = [];
    for (int i = 0; i < data.length; i++) {
      productList.add(ProductModel.fromJson(data[i]));
    }
    return productList;
  }
}
