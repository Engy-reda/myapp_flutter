import 'package:myapp_flutter/helper/api.dart';

class AllCategories {
  Future<List<dynamic>> getAllCategories() async {
    print("object");
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products/categories');
    print(data);
    return data;
  }
}
