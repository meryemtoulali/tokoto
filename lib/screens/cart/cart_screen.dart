import 'package:ecommerce/screens/cart/widgets/cart_header.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(child: Column(children: [
          CartHeader(),
          //CartContents();
        ]))
      ),
          );
  }
}