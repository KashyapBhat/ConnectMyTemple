import 'package:connect_my_temple/screens/home_screen.dart';
import 'package:connect_my_temple/screens/login_screen.dart';
import 'package:connect_my_temple/screens/registration_screen.dart';
import 'package:connect_my_temple/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'common/Constants.dart';

void main() => runApp(ConnectMyTempleApp());

class ConnectMyTempleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        HomeScreen.id: (context) => HomeScreen(),
      },
      title: APP_NAME,
    );
  }
}
