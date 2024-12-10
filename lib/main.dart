import 'package:flutter/material.dart';
import 'package:fooddelivery/Screens/OrderRiview/order_review_screen.dart';
import 'package:fooddelivery/Screens/OrderScreen/order_screen.dart';
import 'package:fooddelivery/Screens/OrderScreen/sucessfull.dart';
import 'package:fooddelivery/Screens/home_screen.dart';

import 'Screens/add_to_cart_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/', // Default starting screen
      routes: {
        '/': (context) => const HomeScreen(),
        '/addtocart': (context) => const AddToCartScreen(),
        '/orderScreen': (context) => const OrderScreen(),
        '/OrderReviewScreen': (context) => const OrderReviewScreen(),
        '/Sucessful': (context) => const Sucessfull()
      },
    );
  }
}
