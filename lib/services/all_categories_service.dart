import 'package:storeapp/helper/api.dart';

class AllCategoriesService {
  Future<List<dynamic>> getallcategoires() async {
    List<dynamic> data =
        await Api().get(myurl: 'https://fakesstoreapi.com/products/categories');
    return data;
  }
}
