class OnboardingContent{
  String text;
  String image;
  OnboardingContent(this.text, this.image);
}

List<OnboardingContent> contents = [
  OnboardingContent("Welcome to TOKOTO. Let's shop!", 
  "../../../assets/images/splash_1.png"),
  OnboardingContent("We help people connect with stores around the United States of America.",
  "../../../assets/images/splash_2.png"),
  OnboardingContent("We show the wasy way to shop. Just stay at home with us.",
  "../../../assets/images/splash_3.png"),
];

// RichText(text: TextSpan(style: TextStyle(color: Colors.grey, fontFamily: "Multi"),
//                      children: <TextSpan>[
//                       TextSpan(text: 'Welcome to '),
//                       TextSpan(text:'Tokoto', style: TextStyle(fontWeight: FontWeight.w700)),
//                       TextSpan(text: ". Let's shop!")
//                      ]),)