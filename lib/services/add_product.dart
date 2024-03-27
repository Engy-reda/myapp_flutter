import 'package:myapp_flutter/helper/api.dart';
import 'package:myapp_flutter/models/products_model.dart';

class AddProducts {
  Future<ProductsModel> addProduct(
      {required String title,
      required String price,
      required String desc,
      required String image,
      required String category}) async {
    Map<String, dynamic> data =
        await Api().post(url: 'https://fakestoreapi.com/products', body: {
      'title': title,
      'price': price,
      'description': desc,
      'image': image,
      'category': category
    });
    return ProductsModel.fromJson(data);
  }
}
