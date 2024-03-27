import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:myapp_flutter/models/products_model.dart';
import 'package:myapp_flutter/services/update_service.dart';
import 'package:myapp_flutter/widgets/custom_text_field.dart';

import '../widgets/custom_botton.dart';

class UpDateProductPage extends StatefulWidget {
  UpDateProductPage({super.key});
  static String id = 'Update Product';

  @override
  State<UpDateProductPage> createState() => _UpDateProductPageState();
}

class _UpDateProductPageState extends State<UpDateProductPage> {
  String? productName, description, image, price;

  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    ProductsModel product =
        ModalRoute.of(context)!.settings.arguments as ProductsModel;
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          title: Text(
            'Up Date Products',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                CustomTextField(
                  onchange: (data) {
                    productName = data;
                  },
                  hintText: 'Product name',
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  inputType: TextInputType.number,
                  onchange: (data) {
                    price = data;
                  },
                  hintText: 'Price',
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  onchange: (data) {
                    description = data;
                  },
                  hintText: 'description',
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  onchange: (data) {
                    image = data;
                  },
                  hintText: 'image',
                ),
                SizedBox(
                  height: 50,
                ),
                CostomButton(
                    onTap: () async {
                      isLoading = true;
                      setState(() {});

                      try {
                        await upDateProduct(product);

                        print('success');
                        print(product.title);
                      } catch (e) {
                        print(e.toString());
                      }
                      isLoading = false;
                      setState(() {});
                    },
                    text: 'UpDate')
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> upDateProduct(ProductsModel product) async {
    await UpDateProductsService().upDateProduct(
        id: product.id,
        title: productName == null ? product.title : productName!,
        price: price == null ? product.price.toString() : price!,
        desc: description == null ? product.description : description!,
        image: image == null ? product.image : image!,
        category: product.category);
  }
}
