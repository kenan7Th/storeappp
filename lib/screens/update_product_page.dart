import 'package:flutter/material.dart';
import 'package:storeapp/models/model.dart';
import 'package:storeapp/services/update_product_service.dart';
import 'package:storeapp/widgets/custom_button.dart';

import '../widgets/custom_text_field.dart';

// ignore: must_be_immutable
class UpdateProductPage extends StatelessWidget {
  UpdateProductPage({Key? key}) : super(key: key);

  static const String id = 'update_page';

  // Update the id to follow Dart naming conventions and use a lowercase with underscores
  String? productName, desc, image;
  String? price;

  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Update Product',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              CustomTextField(
                myonChanged: (data) {
                  productName = data;
                },
                myhintext: 'Product Name',
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                myonChanged: (data) {
                  desc = data;
                },
                myhintext: 'description',
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                inputType: TextInputType.number,
                myonChanged: (data) {
                  price = data;
                },
                myhintext: 'price',
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                myonChanged: (data) {
                  image = data;
                },
                myhintext: 'image',
              ),
              SizedBox(
                height: 50,
              ),
              CustomButton(
                buttonTitle: 'Update',
                myonTap: () {
                  UpdateProduct().updateProduct(
                      title: productName!,
                      price: price!,
                      desc: desc!,
                      image: image!,
                      category: product.category);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
