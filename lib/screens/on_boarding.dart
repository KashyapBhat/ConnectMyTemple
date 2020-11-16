import 'package:connect_my_temple/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

class OnBoardingScreen extends StatefulWidget {
  static const String id = 'on_boarding_screen';

  @override
  OnBoardingScreenState createState() => new OnBoardingScreenState();
}

class OnBoardingScreenState extends State<OnBoardingScreen> {
  List<Slide> slides = new List();

  Function goToTab;

  @override
  void initState() {
    super.initState();

    slides.add(
      new Slide(
        title: "Temple Connect",
        styleTitle: TextStyle(
            color: Color(0xfffd6930),
            fontSize: 30.0,
            fontWeight: FontWeight.bold),
        description:
            "Temple connect is a highly scalable temple ticketing application for Hindu Temples. It helps temple managers to provide effective service to devotees.",
        styleDescription: TextStyle(fontSize: 20.0),
        pathImage: "images/photo_school.png",
      ),
    );
    slides.add(
      new Slide(
        title: "Select Temple",
        styleTitle: TextStyle(
            color: Color(0xfffd6930),
            fontSize: 30.0,
            fontWeight: FontWeight.bold),
        description: "Select your temple using temple ID or using barcode.",
        styleDescription: TextStyle(fontSize: 20.0),
        pathImage: "images/photo_coffee_shop.png",
      ),
    );
    slides.add(
      new Slide(
        title: "Poojas/Sevas/Donations",
        styleTitle: TextStyle(
            color: Color(0xfffd6930),
            fontSize: 30.0,
            fontWeight: FontWeight.bold),
        description:
            "Accept poojas/sevas/donations from devotees with secured payment options with payment receipts and reports.",
        styleDescription: TextStyle(fontSize: 20.0),
        pathImage: "images/photo_museum.png",
      ),
    );
    slides.add(
      new Slide(
        title: "History",
        styleTitle: TextStyle(
            color: Color(0xfffd6930),
            fontSize: 30.0,
            fontWeight: FontWeight.bold),
        description: "Learn about the temples history and it\'s heritage",
        styleDescription: TextStyle(fontSize: 20.0),
        pathImage: "images/photo_museum.png",
      ),
    );
    slides.add(
      new Slide(
        title: "Upcoming events",
        styleTitle: TextStyle(
            color: Color(0xfffd6930),
            fontSize: 30.0,
            fontWeight: FontWeight.bold),
        description: "Get notified for upcoming programs and festivals",
        styleDescription: TextStyle(fontSize: 20.0),
        pathImage: "images/photo_museum.png",
      ),
    );
  }

  void onDonePress() {
    Navigator.pushNamed(context, WelcomeScreen.id);
  }

  void onTabChangeCompleted(index) {
    // Index of current tab is focused
  }

  Widget renderNextBtn() {
    return Icon(
      Icons.navigate_next,
      color: Color(0xffffcc5c),
      size: 35.0,
    );
  }

  Widget renderDoneBtn() {
    return Icon(
      Icons.done,
      color: Color(0xffffcc5c),
    );
  }

  Widget renderSkipBtn() {
    return Icon(
      Icons.skip_next,
      color: Color(0xffffcc5c),
    );
  }

  List<Widget> renderListCustomTabs() {
    List<Widget> tabs = new List();
    for (int i = 0; i < slides.length; i++) {
      Slide currentSlide = slides[i];
      tabs.add(Container(
        width: double.infinity,
        height: double.infinity,
        child: Container(
          margin: EdgeInsets.only(bottom: 60.0, top: 60.0),
          child: ListView(
            children: <Widget>[
              GestureDetector(
                  child: Image.asset(
                currentSlide.pathImage,
                width: 200.0,
                height: 200.0,
                fit: BoxFit.contain,
              )),
              Container(
                child: Text(
                  currentSlide.title,
                  style: currentSlide.styleTitle,
                  textAlign: TextAlign.center,
                ),
                margin: EdgeInsets.only(top: 20.0),
              ),
              Container(
                child: Text(
                  currentSlide.description,
                  style: currentSlide.styleDescription,
                  textAlign: TextAlign.center,
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                ),
                margin: EdgeInsets.only(top: 20.0),
              ),
            ],
          ),
        ),
      ));
    }
    return tabs;
  }

  @override
  Widget build(BuildContext context) {
    return new IntroSlider(
      // List slides
      slides: this.slides,

      // Skip button
      renderSkipBtn: this.renderSkipBtn(),
      colorSkipBtn: Color(0x33ffcc5c),
      highlightColorSkipBtn: Color(0xffffcc5c),

      // Next button
      renderNextBtn: this.renderNextBtn(),

      // Done button
      renderDoneBtn: this.renderDoneBtn(),
      onDonePress: this.onDonePress,
      colorDoneBtn: Color(0x33ffcc5c),
      highlightColorDoneBtn: Color(0xffffcc5c),

      // Dot indicator
      colorDot: Color(0xffffcc5c),
      sizeDot: 9.0,
      // typeDotAnimation: dotSliderAnimation.SIZE_TRANSITION,

      // Tabs
      listCustomTabs: this.renderListCustomTabs(),
      backgroundColorAllSlides: Colors.white,
      refFuncGoToTab: (refFunc) {
        this.goToTab = refFunc;
      },

      // Show or hide status bar
      shouldHideStatusBar: true,

      // On tab change completed
      onTabChangeCompleted: this.onTabChangeCompleted,
    );
  }
}

//------------------ Default config ------------------
//class IntroScreenState extends State<IntroScreen> {
//  List<Slide> slides = new List();
//
//  @override
//  void initState() {
//    super.initState();
//
//    slides.add(
//      new Slide(
//        title: "ERASER",
//        description: "Allow miles wound place the leave had. To sitting subject no improve studied limited",
//        pathImage: "images/photo_eraser.png",
//        backgroundColor: Color(0xfff5a623),
//      ),
//    );
//    slides.add(
//      new Slide(
//        title: "PENCIL",
//        description: "Ye indulgence unreserved connection alteration appearance",
//        pathImage: "images/photo_pencil.png",
//        backgroundColor: Color(0xff203152),
//      ),
//    );
//    slides.add(
//      new Slide(
//        title: "RULER",
//        description:
//        "Much evil soon high in hope do view. Out may few northward believing attempted. Yet timed being songs marry one defer men our. Although finished blessing do of",
//        pathImage: "images/photo_ruler.png",
//        backgroundColor: Color(0xff9932CC),
//      ),
//    );
//  }
//
//  void onDonePress() {
//    // Do what you want
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return new IntroSlider(
//      slides: this.slides,
//      onDonePress: this.onDonePress,
//    );
//  }
//}
