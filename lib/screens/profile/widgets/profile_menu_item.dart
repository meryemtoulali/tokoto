import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../models/profile_menu_model.dart';

class ProfileMenuItem extends StatelessWidget {
  final ProfileMenuModel profileMenuEntry;

  const ProfileMenuItem({
    super.key,
    required this.profileMenuEntry,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 7),
        margin: EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
          color: Color(0xffF2F3F7),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    child: SvgPicture.asset(
                      profileMenuEntry.iconPath,
                      color: Color.fromARGB(255, 255, 138, 108),
                      height: 15,
                    ),
                  ),
                  Text(profileMenuEntry.name,
                      style: TextStyle(
                          color: Color.fromARGB(255, 99, 99, 99),
                          fontSize: 14)),
                ]),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 16,
                  color: Color.fromARGB(255, 197, 197, 197),
                )
              ]),
        ));
  }
}
