import 'package:flutter/material.dart';

import '../../../models/cart_product_model.dart';
import '../../../models/product_model.dart';

class CartStoreSection extends StatelessWidget {
  final CartStoreModel store;
  const CartStoreSection({super.key, required this.store});

  @override
  Widget build(BuildContext context) {
    print(store.products);
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15),
            Text(store.storeName,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
            const SizedBox(height: 10),
            SizedBox(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: store.products.length,
                  scrollDirection: Axis.vertical,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return CartProduct(productId: store.products[index]);
                  }),
            ),
          ],
        ));
  }
}

class CartProduct extends StatelessWidget {
  final int productId;
  const CartProduct({super.key, required this.productId});

  @override
  Widget build(BuildContext context) {
    ProductModel product =
        productsList.firstWhere((product) => product.id == productId);
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(children: [
        Container(
          height: 80,
          width: 70,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(2),
          margin: const EdgeInsets.only(right: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color(0xffEDEEF1),
          ),
          child: Image.asset(
            product.images[0],
          ),
        ),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(product.title, style: const TextStyle(fontSize: 14)),
          const SizedBox(height: 10),
          Row(
            children: [
              Text("\$${product.price}",
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.orange)),
              const SizedBox(width: 5),
              Text("x1", style: TextStyle(color: Colors.grey))
            ],
          )
        ])
      ]),
    );
  }
}
