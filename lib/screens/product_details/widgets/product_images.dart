import 'package:flutter/material.dart';

class ProductImages extends StatefulWidget {
  final List<String> images;
  const ProductImages({super.key, required this.images});

  @override
  State<ProductImages> createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  int selectedImage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        width: 200,
        child: AspectRatio(
          aspectRatio: 1,
          child: Hero(
            tag: widget.images[0],
            child: Image.asset(widget.images[selectedImage])))),
      Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
              widget.images.length,
              (index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedImage = index;
                      });
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      margin: const EdgeInsets.only(right: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        border: Border.all(
                            color: selectedImage == index
                                ? Colors.orange
                                : Colors.transparent),
                      ),
                      child: Image.asset(widget.images[index]),
                    ),
                  )))
    ]);
  }
}
