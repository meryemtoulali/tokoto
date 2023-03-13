import 'package:ecommerce/screens/cart/widgets/cart_header.dart';
import 'package:flutter/material.dart';

import 'widgets/cart_contents.dart';
import 'widgets/custom_bottom_nav_bar2.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(children: [
        CartHeader(),
        SizedBox(height: 10),
        CartContents(),
      ]))),
      bottomNavigationBar: const CustomBottomNavBar2(),
    );
  }
}
