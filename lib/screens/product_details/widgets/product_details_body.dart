import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../controllers/product_controller.dart';
import '../../../models/product_model.dart';
import 'product_customization.dart';
import 'top_rounded_corners.dart';

class ProductDetailsBody extends StatelessWidget {
  final ProductModel product;
  const ProductDetailsBody({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    ProductController productController = Get.find<ProductController>();
    return TopRoundedCorners(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          Container(
              width: double.maxFinite,
              alignment: Alignment.centerLeft,
              child: Text(product.title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ))),
          GestureDetector(
            onTap:() {
              productController.toggleFavorite(product);

            },
            child: GetBuilder<ProductController>(
              builder: (controller) {
                return Container(
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      color: product.isFavourite
                          ? const Color(0xffffe6e6)
                          : const Color(0xfff5f6f9),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                    ),
                    child: SvgPicture.asset("assets/icons/Heart Icon_2.svg",
                        color: product.isFavourite
                            ? const Color(0xffff4848)
                            : const Color(0xffdbdee4)));
              }
            ),
          ),
          Text(product.description,
              style: const TextStyle(
                color: Colors.grey,
                height: 1.8,
              )),
          const SizedBox(height: 10),
          Row(children: const [
            Text("See more details",
                style: TextStyle(
                  color: Color(0xfff77547),
                )),
            SizedBox(width: 8),
            Icon(Icons.arrow_forward_ios_rounded,
                size: 10, color: Color(0xfff77547)),
          ]),
          TopRoundedCorners(
              color: const Color(0xFFF6F7F9),
              child: Column(children: [
                ProductCustomization(product: product),
                TopRoundedCorners(
                    color: Colors.white,
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 20),
                        child: SizedBox(
                            width: double.infinity,
                            height: 56,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                foregroundColor: Colors.white,
                                backgroundColor: Colors.orange,
                              ),
                              onPressed: () {},
                              child: const Text(
                                "Add To Cart",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                            )))),
              ])),
        ]),
      ),
    );
  }
}
