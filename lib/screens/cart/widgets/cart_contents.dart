import 'package:flutter/material.dart';

import '../../../models/cart_product_model.dart';
import 'cart_store_section.dart';

class CartContents extends StatelessWidget {
  const CartContents({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: SizedBox(
            width: double.maxFinite,
            height: double.maxFinite,
            child: ListView.builder(
                itemCount: cartStoreList.length,
                scrollDirection: Axis.vertical,
                padding: EdgeInsets.symmetric(horizontal: 10),
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return CartStoreSection(store: cartStoreList[index]);
                })));
  }
}
