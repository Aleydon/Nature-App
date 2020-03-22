import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';







class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  List<Slide> slides = new List();

  @override
   void initState() {
    super.initState();

    slides.add(
      new Slide(
        title: "Welcome to Nature App",
        description: "Allow miles wound place the leave had. To sitting subject no improve studied limited",
        backgroundImage: 'assets/intro/intro.jpg'
      ),
    );
    slides.add(
      new Slide(
        title: "PENCIL",
        description: "Ye indulgence unreserved connection alteration appearance",
        backgroundImage: 'assets/intro/intro2.jpg'
      ),
    );
    slides.add(
      new Slide(
        title: "RULER",
        description:
        "Much evil soon high in hope do view. Out may few northward believing attempted. Yet timed being songs marry one defer men our. Although finished blessing do of",
        backgroundImage: 'assets/intro/intro3.jpg'
      ),
    );
  }





  Widget build(BuildContext context) {
    return IntroSlider(
      slides: this.slides,
      onDonePress: (){
          Navigator.pushNamed(context, '/home');
      }
    );
  }
}