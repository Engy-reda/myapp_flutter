import 'package:myapp_flutter/helper/api.dart';
import 'package:myapp_flutter/models/products_model.dart';

class CategoryService {
  Future<List<dynamic>> getCategory({required String categoryName}) async {
    List<dynamic> data = await Api()
        .get(url: 'https://fakestoreapi.com/products/category/$categoryName');
    List<ProductsModel> productsList = [];
    for (int i = 0; i < productsList.length; i++) {
      productsList.add(ProductsModel.fromJson(data[i]));
    }
    return productsList;
  }
}
