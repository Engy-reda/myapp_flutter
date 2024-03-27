import 'package:flutter/material.dart';
import 'package:myapp_flutter/screens/home_page.dart';
import 'package:myapp_flutter/screens/update_product_page.dart';

void main() {
  runApp(StoreApp());
}

//okpokpo
class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomePage.id: (context) => HomePage(),
        UpDateProductPage.id: (context) => UpDateProductPage(),
      },
      initialRoute: HomePage.id,
    );
  }
}
