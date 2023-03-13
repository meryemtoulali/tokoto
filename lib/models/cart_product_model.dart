import 'package:flutter/material.dart';


class CartStoreModel {
  final String storeName;
  final List<int> products;

  CartStoreModel({
    required this.storeName, required this.products
  });
}

List<CartStoreModel> cartStoreList = [
  CartStoreModel(
    storeName: "Wano Store",
    products: [1, 4]
  ),
  CartStoreModel(
    storeName: "Sportz Store",
    products: [2, 3]
  ),
];




// class CartProductModel {
//   final int id;
//   final int numberOfItems;

//   CartProductModel({
//     required this.id, required this.numberOfItems
//   });
// }

// List<CartProductModel> cartProductList = [
//   CartProductModel(
//     id: 1,
//     numberOfItems: 2
//   ),
// CartProductModel(
//     id: 3,
//     numberOfItems: 1
//   ),
//   CartProductModel(
//     id: 2,
//     numberOfItems: 1
//   ),
//   CartProductModel(
//     id: 4,
//     numberOfItems: 1
//   ),
// ];
