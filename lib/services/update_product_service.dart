import '../helper/api.dart';
import '../models/model.dart';

class UpdateProductSerivce {
  Future<ProductModel> updateProduct({
    required String title,
    required String price,
    required String desc,
    required String image,
    required String category,
    required int id,
  }) async {
    Map<String, dynamic> data = Api().put(
        url: 'https://fakestoreapi.com/products/$id',
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
