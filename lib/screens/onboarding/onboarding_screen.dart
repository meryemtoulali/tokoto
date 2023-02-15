import 'package:flutter/material.dart';

import 'onboarding_content.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentIndex = 0;
  final PageController _controller = PageController(initialPage: 0);
  // @override
  // void initState() {
  //   _controller = PageController(initialPage: 0);    super.initState();
  // }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: PageView.builder(
                    controller: _controller,
                    itemCount: contents.length,
                    onPageChanged: (int index) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    itemBuilder: (_, i) {
                      return Column(children: [
                        const Text("TOKOTO",
                            style: TextStyle(
                                color: Color(0xfff77546),
                                fontSize: 30,
                                fontFamily: "Multi",
                                fontWeight: FontWeight.w700,
                                height: 3)),
                        // splash text
                        Text(contents[i].text,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                color: Colors.grey, fontFamily: "Multi")),

                        // splash image
                        Container(
                            width: 300,
                            height: 300,
                            margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                            child: Image.asset(contents[i].image)),
                      ]);
                    }),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(contents.length,
                      (index) => buildDot(index, context))),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 30, 0, 30),
                child: TextButton(
                    onPressed: () => {pressContinue(currentIndex)},
                    style: TextButton.styleFrom(
                        backgroundColor: const Color(0xfff77546),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 110,
                          vertical: 25,
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18))),
                    child: const Text("Continue",
                        style: TextStyle(
                            color: Colors.white, fontFamily: "Multi"))),
              ),
            ],
          )),
    ));
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
        height: 5,
        width: currentIndex == index ? 10 : 5,
        margin: const EdgeInsets.only(right: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xfff77546),
        ));
  }

  void pressContinue(currentIndex) {
    if (currentIndex == contents.length - 1) {
      Navigator.pushNamed(context, "/signin");
    } else {
      _controller.nextPage(
          duration: const Duration(milliseconds: 100), curve: Curves.bounceIn);
    }
  }
}
