import 'package:storeapp/helper/api.dart';
import 'package:storeapp/models/model.dart';

class AddProdcut {
  Future<ProductModel> addProduct(
      {required String title,
      required String price,
      required String desc,
      required String image,
      required String category}) async {
    Map<String, dynamic> data = Api().post(
        url: 'https://fakestoreapi.com/products',
        body: {
          'title': title,
          'price': price,
          'description': desc,
          'image': image,
          'category': category,
        },
        token: '') as Map<String, dynamic>;
    return ProductModel.fromJson(data);
  }
}
