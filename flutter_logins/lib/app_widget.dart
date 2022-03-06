import 'package:flutter/material.dart';
import 'package:flutter_logins/choice_page.dart';
import 'package:hexcolor/hexcolor.dart';

class AppWidget extends StatelessWidget {
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
      home: ChoicePage(),
    );
  }
}
