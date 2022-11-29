import 'package:flutter/material.dart';
import 'package:shopp/providers/CartProductProvider.dart';
import 'package:shopp/providers/ProductListProvider.dart';
import 'package:shopp/screen/cartProduct/CartProduct.dart';
import 'package:shopp/screen/home/Home.dart';
import 'package:shopp/screen/productDetail/ProductDetail.dart';
import 'package:shopp/utils/ConstantsRoutes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      //precisa importar o import 'package:provider/provider.dart';
      //do pacote de provider
      providers: [
        ChangeNotifierProvider(create: (_) => ProductListProvider()),
        ChangeNotifierProvider(create: (_) => CartProductProvider())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            primaryColor: Colors.purple,
            fontFamily: "Lato",
            colorScheme: ColorScheme.fromSwatch().copyWith(
              secondary: Colors.deepOrange,
            )),
        home: const Home(),
        debugShowCheckedModeBanner: false,
        routes: {
          ConstantRoutes.productDetail: (_) => const ProductDetails(),
          ConstantRoutes.cartProduct: (_) => const CartProduct()
        },
      ),
    );
  }
}
