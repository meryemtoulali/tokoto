import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomBottomNavBar2 extends StatelessWidget {
  const CustomBottomNavBar2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10))),
      height: 150,
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 20,
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffEDEEF1),
                  ),
                  padding: const EdgeInsets.all(8),
                  child: SizedBox(
                    height: 10,
                    width: 10,
                    child: SvgPicture.asset(
                      "assets/icons/receipt.svg",
                      color: const Color(0xfff77546),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Total:",
                          style: TextStyle(color: Colors.grey, fontSize: 12)),
                      Text("\$337.15",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600)),
                    ]),
              ],
            ),
            Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(children: const [
                    SizedBox(height: 10),
                    Text("Add voucher code",
                        style: TextStyle(color: Colors.grey)),
                    SizedBox(width: 6),
                    Icon(Icons.arrow_forward_ios_rounded,
                        size: 10, color: Colors.grey),
                  ]),
                  SizedBox(height: 20),
                  TextButton(
                      onPressed: () => {},
                      style: TextButton.styleFrom(
                          backgroundColor: const Color(0xfff77546),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 40,
                            vertical: 20,
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18))),
                      child: const Text("Check out",
                          style: TextStyle(
                              color: Colors.white, fontFamily: "Multi"))),
                ])
          ],
        ),
      ),
    );
  }
}
