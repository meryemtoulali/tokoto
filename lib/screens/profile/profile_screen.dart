import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../models/profile_menu_model.dart';
import 'widgets/profile_menu_item.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.all(35),
                child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: (){
                                  Navigator.pushNamed(context, "/signin");
                                },
                                child: const Icon(
                                  Icons.arrow_back_ios_new_rounded,
                                  size: 16,
                                  color: Colors.grey,
                                ),
                              ),
                              const Text(
                                'Profile',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const Icon(
                                Icons.arrow_back_ios_new_rounded,
                                size: 16,
                                color: Colors.white,
                              ),
                            ]),
                        const SizedBox(
                          height: 45,
                        ),
                        Stack(alignment: Alignment.bottomRight, children: [
                          Container(
                              margin: EdgeInsets.all(5),
                              height: 100,
                              decoration: const BoxDecoration(
                                color: Colors.orange,
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset(
                                  "assets/images/profile image.png")),
                          Container(
                            height: 40,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 222, 222, 222),
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white, width: 2),
                            ),
                            child: IconButton(
                              padding: const EdgeInsets.all(0),
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                  "assets/icons/Camera Icon.svg"),
                            ),
                          ),
                        ]),
                        SizedBox(height: 30),
                        SizedBox(
                          height: 500,
                          child: ListView.builder(
                            itemCount: profileMenuList.length,
                            scrollDirection: Axis.vertical,
                            itemBuilder: (context, index) {
                              return ProfileMenuItem(
                                  profileMenuEntry: profileMenuList[index]);
                            },
                          ),
                        )
                      ],
                    )))));
  }
}
