import 'package:flutter/material.dart';
import 'package:storeapp/models/model.dart';
import 'package:storeapp/services/get_all_products_service.dart';

import '../widgets/custom_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static String id = 'HomePage'; // Corrected the typo in the id name

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Icon(Icons.account_circle_outlined)],
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'New Trend',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 65),
        child: FutureBuilder<List<ProductModel>>(
          future: AllProuctsService()
              .getAllProducts(), // Corrected the typo in the service name
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error fetching data'));
            } else if (snapshot.hasData) {
              List<ProductModel>? products = snapshot.data;
              return GridView.builder(
                itemCount: products!.length,
                clipBehavior: Clip.none,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.5,
                  crossAxisSpacing: 10,
                  mainAxisSpacing:
                      10, // Changed mainAxisSpacing to a smaller value
                ),
                itemBuilder: (context, index) {
                  return CustomCard(
                    product: products[index],
                  );
                },
              );
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
















// import 'package:flutter/material.dart';
// import 'package:storeapp/models/model.dart';
//import 'package:storeapp/services/get_all_products_service.dart';

// import '../widgets/custom_card.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);
//   static String id = 'HomePAge';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         actions: [Icon(Icons.account_circle_outlined)],
//         backgroundColor: Colors.white,
//         elevation: 0,
//         centerTitle: true,
//         title: Text(
//           'New Trend',
//           style: TextStyle(
//             color: Colors.black,
//           ),
//         ),
//       ),
//       body: Padding(
//           padding: const EdgeInsets.only(left: 16, right: 16, top: 65),
//           child: FutureBuilder<List<ProductModel>>(
//             future: AllProuctsService().getAllProducts(),
//             builder: (context, snapshot) {
//               if (snapshot.hasData) {
//                 List<ProductModel> products = snapshot.data;
//                 return GridView.builder(
//                     itemCount: products.length,
//                     clipBehavior: Clip.none,
//                     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                       crossAxisCount: 2,
//                       childAspectRatio: 1.5,
//                       crossAxisSpacing: 10,
//                       mainAxisSpacing: 100,
//                     ),
//                     itemBuilder: (context, index) {
//                       return CustomCard(
//                         product: products[index],
//                       );
//                     });
//               } else {
//                 return Center(child: CircularProgressIndicator());
//               }
//             },
//           )),
//     );
//   }
// }