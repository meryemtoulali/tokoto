import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../widgets/statefulcheckbox.dart';

var formKey = GlobalKey<FormState>();
String email = "", password = "";
bool isChecked = false;

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(35),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.arrow_back_ios_new_rounded,
                        size: 16,
                        color: Colors.grey,
                      ),
                      Text(
                        'Sign In',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Icon(
                        Icons.arrow_back_ios_new_rounded,
                        size: 16,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  Text(
                    'Welcome Back',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Sign in with your email and password \nor continue with social media',
                    style: TextStyle(
                      color: Colors.grey,
                      height: 1.5,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 40),
                  TextFormField(
                    onSaved: (String? newValue) {
                      email = newValue!;
                    },
                    validator: (String? value) {
                      final bool emailValid = RegExp(
                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(value!);
                      if (!emailValid) {
                        return "Invalid email";
                      } else {
                        return null;
                      }
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 25),
                      labelText: "Email",
                      hintText: "Enter your email",
                      suffixIcon: Icon(Icons.email_outlined),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    onSaved: (String? newValue) {
                      password = newValue!;
                    },
                    validator: (value) {
                      if (value!.length < 8) {
                        return "Password must be longer than 8 characters";
                      }
                    },
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 25),
                      labelText: "Password",
                      hintText: "Enter your password",
                      suffixIcon: Icon(Icons.lock_outline_rounded),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          // Checkbox(
                          //   value: isChecked,
                          //   onChanged: changeCheckboxState,
                          // ),
                          StatefulCheckbox(),
                          Text(
                            'Remember me',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Forgot Password',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  TextButton(
                    onPressed: () => signIn(context),
                    child: Text('Continue'),
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xfff77546),
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(
                        horizontal: 100,
                        vertical: 16,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 35,
                        height: 35,
                        // padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffeeeff1),
                        ),
                        alignment: Alignment.center,
                        child: SvgPicture.asset(
                          "assets/icons/google.svg",
                          width: 20,
                          height: 20,
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 35,
                        height: 35,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffeeeff1),
                        ),
                        alignment: Alignment.center,
                        child: SvgPicture.asset(
                          "assets/icons/facebook.svg",
                          color: Color.fromARGB(255, 14, 109, 186),
                          width: 20,
                          height: 20,
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 35,
                        height: 35,
                        padding: EdgeInsets.all(9),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffeeeff1),
                        ),
                        alignment: Alignment.center,
                        child: SvgPicture.asset(
                          "assets/icons/twitter.svg",
                          width: 20,
                          height: 20,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  CentredRow(
                    children: [
                      Text(
                        'Don\'t have an account? ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "/signup");
                        },
                        child: Text(
                          'Sign Up',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.orange,
                          ),
                        ),
                      ),
                    ],
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     Text(
                  //       'Don\'t have an account? ',
                  //       textAlign: TextAlign.center,
                  //       style: TextStyle(
                  //         color: Colors.grey,
                  //       ),
                  //     ),
                  //     Text(
                  //       'Sign Up',
                  //       textAlign: TextAlign.center,
                  //       style: TextStyle(
                  //         color: Colors.orange,
                  //       ),
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void signIn(context) {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      print(email);
      print(password);
      // call sign in api
      // if success, go to homescreen
      Navigator.pushNamed(context, "/home");
    }
  }

  void changeCheckboxState(bool? value) {
    isChecked = value!;
  }
}

class CentredRow extends StatelessWidget {
  const CentredRow({
    super.key,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.children = const <Widget>[],
  });

  final CrossAxisAlignment crossAxisAlignment;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: crossAxisAlignment,
      children: children,
    );
  }
}
