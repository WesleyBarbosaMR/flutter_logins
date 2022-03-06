import 'package:flutter/material.dart';
import 'package:login01_module/pages/splash_page.dart';
import 'package:hexcolor/hexcolor.dart';

class Login01AppWidget extends StatelessWidget {
  Color _primaryColor = HexColor('#1E5959');
  Color _accentColor = HexColor('#89D99D');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Logins',
      theme: ThemeData(
        primaryColor: _primaryColor,
        accentColor: _accentColor,
        scaffoldBackgroundColor: Colors.grey.shade100,
        primarySwatch: Colors.grey,
      ),
      home: SplashPage(title: 'Login&Register App'),
    );
  }
}
