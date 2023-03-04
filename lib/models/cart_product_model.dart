import 'package:flutter/material.dart';

class CartProductModel {
  final int id;
  final int numberOfItems;

  CartProductModel({
    required this.id, required this.numberOfItems
  });
}

List<CartProductModel> productsList = [
  CartProductModel(
    id: 1,
    numberOfItems: 2
  ),
CartProductModel(
    id: 3,
    numberOfItems: 1
  ),
  CartProductModel(
    id: 2,
    numberOfItems: 1
  ),
  CartProductModel(
    id: 4,
    numberOfItems: 1
  ),
];
