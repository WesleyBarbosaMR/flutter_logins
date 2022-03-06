import 'package:http/http.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_ui/flutter_test_ui.dart';
import 'package:flutter/material.dart';

// * Login 1 Page
import 'package:login01_module/login01_module.dart';

class ChoicePage extends StatefulWidget {
  const ChoicePage({Key? key}) : super(key: key);

  @override
  State<ChoicePage> createState() => _ChoicePageState();
}

class _ChoicePageState extends State<ChoicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text('Home', style: TextStyle(fontSize: 20, color: Colors.white)),
        backgroundColor: Theme.of(context).primaryColor,
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.home_rounded),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 150),
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Qual app de login você deseja visitar ?',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 30),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 95,
                        width: 100,
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => Login01AppWidget()));
                            },
                            child: Column(
                              children: [
                                SizedBox(height: 15),
                                Icon(Icons.settings_cell_outlined,
                                    color: Colors.white),
                                SizedBox(height: 5),
                                Center(
                                  child: Text(
                                    'Login 1',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                              backgroundColor: MaterialStateProperty.all(
                                Theme.of(context).primaryColor,
                              ),
                              shadowColor:
                                  MaterialStateProperty.all(Colors.black26),
                              textStyle: MaterialStateProperty.all(
                                  TextStyle(fontSize: 10, color: Colors.white)),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 95,
                        width: 100,
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => Login01AppWidget()));
                            },
                            child: Column(
                              children: [
                                SizedBox(height: 15),
                                Icon(Icons.settings_cell_outlined,
                                    color: Colors.white),
                                SizedBox(height: 5),
                                Center(
                                  child: Text(
                                    'Login 2',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                              backgroundColor: MaterialStateProperty.all(
                                Theme.of(context).primaryColor,
                              ),
                              shadowColor:
                                  MaterialStateProperty.all(Colors.black26),
                              textStyle: MaterialStateProperty.all(
                                  TextStyle(fontSize: 10, color: Colors.white)),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 95,
                        width: 100,
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => Login01AppWidget()));
                            },
                            child: Column(
                              children: [
                                SizedBox(height: 15),
                                Icon(Icons.settings_cell_outlined,
                                    color: Colors.white),
                                SizedBox(height: 5),
                                Center(
                                  child: Text(
                                    'Login 3',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                              backgroundColor: MaterialStateProperty.all(
                                Theme.of(context).primaryColor,
                              ),
                              shadowColor:
                                  MaterialStateProperty.all(Colors.black26),
                              textStyle: MaterialStateProperty.all(
                                  TextStyle(fontSize: 10, color: Colors.white)),
                            ),
                          ),
                        ),
                      ),
                    ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 95,
                        width: 100,
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => Login01AppWidget()));
                            },
                            child: Column(
                              children: [
                                SizedBox(height: 15),
                                Icon(Icons.settings_cell_outlined,
                                    color: Colors.white),
                                SizedBox(height: 5),
                                Center(
                                  child: Text(
                                    'Login 4',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                              backgroundColor: MaterialStateProperty.all(
                                Theme.of(context).primaryColor,
                              ),
                              shadowColor:
                                  MaterialStateProperty.all(Colors.black26),
                              textStyle: MaterialStateProperty.all(
                                  TextStyle(fontSize: 10, color: Colors.white)),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 95,
                        width: 100,
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => Login01AppWidget()));
                            },
                            child: Column(
                              children: [
                                SizedBox(height: 15),
                                Icon(Icons.settings_cell_outlined,
                                    color: Colors.white),
                                SizedBox(height: 5),
                                Center(
                                  child: Text(
                                    'Login 5',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                              backgroundColor: MaterialStateProperty.all(
                                Theme.of(context).primaryColor,
                              ),
                              shadowColor:
                                  MaterialStateProperty.all(Colors.black26),
                              textStyle: MaterialStateProperty.all(
                                  TextStyle(fontSize: 10, color: Colors.white)),
                            ),
                          ),
                        ),
                      ),
                    ]),
              ]),
        ),
      ),
    );
  }
}
