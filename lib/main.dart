import 'screens/cart/cart_screen.dart';

import 'screens/product_details/product_details_screen.dart';
import 'screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'screens/onboarding/onboarding_screen.dart';
import 'screens/auth/signin_screen.dart';
import 'screens/auth/signup_screen.dart';
import 'screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecommerce',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        fontFamily: "Ubuntu",
      ),
      initialRoute: "/profile",
      routes: {
        "/signin": (context) => const SigninScreen(),
        "/signup": (context) => const SignupScreen(),
        "/home": (context) => const HomeScreen(),
        "/onboarding" : (context) => const OnboardingScreen(),
        "/profile" : (context) => const ProfileScreen(),
        "/product_details" : (context) => const ProductDetailsScreen(),
        "/cart" : (context) => const CartScreen(),

      },
    );
  }
}
