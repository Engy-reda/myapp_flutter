import 'package:myapp_flutter/helper/api.dart';
import 'package:myapp_flutter/models/products_model.dart';

class UpDateProductsService {
  Future<ProductsModel> upDateProduct(
      {required String title,
      required String price,
      required String desc,
      required String image,
      required String category,
      required int id}) async {
    print('id is : $id');
    Map<String, dynamic> data =
        await Api().put(url: 'https://fakestoreapi.com/products/$id', body: {
      'title': title,
      'price': price,
      'description': desc,
      'image': image,
      'category': category
    });
    print('data in update product is : $data');
    return ProductsModel.fromJson(data);
  }
}
