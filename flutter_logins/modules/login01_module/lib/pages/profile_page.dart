import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login01_module/components/header_widget.dart';
import 'package:login01_module/pages/login/forgot_password_page.dart';
import 'package:login01_module/pages/login/forgot_password_verification_page.dart';
import 'package:login01_module/pages/login/login_page.dart';
import 'package:login01_module/pages/registration/register_page.dart';
import 'package:login01_module/pages/splash_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  double _drawerIconSize = 24;
  double _drawerFontSize = 17;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Minha Conta',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            )),
        elevation: 0.5,
        iconTheme: IconThemeData(color: Colors.white),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                  Theme.of(context).primaryColor,
                  Theme.of(context).accentColor,
                ]),
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(top: 16, right: 16),
            child: Stack(children: [
              Icon(Icons.notifications),
              Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    width: 2,
                    height: 2,
                    padding: EdgeInsets.all(11),
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    constraints: BoxConstraints(minWidth: 12, minHeight: 12),
                  )),
              Positioned(
                right: 3,
                top: 0.45,
                child: Text(
                  '5',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ),
              ),
            ]),
          )
        ],
      ),
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.0, 1.0],
            colors: [
              Theme.of(context).primaryColor.withOpacity(0.2),
              Theme.of(context).accentColor.withOpacity(0.5),
            ],
          )),
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.0, 1.0],
                    colors: [
                      Theme.of(context).primaryColor,
                      Theme.of(context).accentColor,
                    ],
                  ),
                ),
                child: Container(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Nome do Usuário',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.home_filled,
                  size: _drawerIconSize,
                  color: Theme.of(context).primaryColor,
                ),
                title: Text(
                  'Tela Inicial',
                  style: TextStyle(
                    fontSize: 17,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => SplashPage(title: 'Login&Register App'),
                    ),
                  );
                },
              ),
              Divider(
                color: Theme.of(context).accentColor,
                height: 1,
                thickness: 0.5,
                indent: 10,
                endIndent: 10,
              ),
              ListTile(
                leading: Icon(Icons.login_rounded,
                    size: _drawerIconSize,
                    color: Theme.of(context).primaryColor),
                title: Text(
                  'Login Page',
                  style: TextStyle(
                      fontSize: _drawerFontSize,
                      color: Theme.of(context).primaryColor),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
              ),
              Divider(
                color: Theme.of(context).accentColor,
                height: 1,
                thickness: 0.5,
                indent: 10,
                endIndent: 10,
              ),
              ListTile(
                leading: Icon(Icons.person_add_alt_1,
                    size: _drawerIconSize,
                    color: Theme.of(context).primaryColor),
                title: Text(
                  'Registration Page',
                  style: TextStyle(
                      fontSize: _drawerFontSize,
                      color: Theme.of(context).primaryColor),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterPage()),
                  );
                },
              ),
              Divider(
                color: Theme.of(context).accentColor,
                height: 1,
                thickness: 0.5,
                indent: 10,
                endIndent: 10,
              ),
              ListTile(
                leading: Icon(
                  Icons.lock_reset_rounded,
                  size: _drawerIconSize,
                  color: Theme.of(context).primaryColor,
                ),
                title: Text(
                  'Forgot Password Page',
                  style: TextStyle(
                      fontSize: _drawerFontSize,
                      color: Theme.of(context).primaryColor),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ForgotPasswordPage()),
                  );
                },
              ),
              Divider(
                color: Theme.of(context).accentColor,
                height: 1,
                thickness: 0.5,
                indent: 10,
                endIndent: 10,
              ),
              ListTile(
                leading: Icon(
                  Icons.verified_user_sharp,
                  size: _drawerIconSize,
                  color: Theme.of(context).primaryColor,
                ),
                title: Text(
                  'Verification Page',
                  style: TextStyle(
                      fontSize: _drawerFontSize,
                      color: Theme.of(context).primaryColor),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ForgotPasswordVerificationPage()),
                  );
                },
              ),
              Divider(
                color: Theme.of(context).accentColor,
                height: 1,
                thickness: 0.5,
                indent: 10,
                endIndent: 10,
              ),
              ListTile(
                leading: Icon(
                  Icons.logout_rounded,
                  size: _drawerIconSize,
                  color: Theme.of(context).primaryColor,
                ),
                title: Text(
                  'Logout',
                  style: TextStyle(
                      fontSize: _drawerFontSize,
                      color: Theme.of(context).primaryColor),
                ),
                onTap: () {
                  SystemNavigator.pop();
                },
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(children: [
          Container(
            height: 100,
            child: HeaderWidget(100, false, Icons.person_pin_circle_rounded),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Column(children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(width: 5, color: Colors.white),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 20,
                      offset: const Offset(5, 5),
                    )
                  ],
                ),
                child: Icon(
                  Icons.person_rounded,
                  size: 80,
                  color: Colors.grey.shade400,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Nome do Usuário',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text('Cargo',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(10),
                child: Column(children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(
                      left: 8.0,
                      bottom: 4.0,
                    ),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Informações do Usuário",
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Card(
                    child: Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.all(15),
                      child: Column(children: <Widget>[
                        Column(children: <Widget>[
                          ListTile(
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 4,
                            ),
                            leading: Icon(Icons.map_rounded),
                            title: Text("Endereço"),
                            subtitle: Text("Rua dos Brasileiros"),
                          ),
                          Divider(
                            color: Colors.blueGrey.shade200,
                            height: 1,
                            thickness: 0.5,
                            indent: 20,
                            endIndent: 20,
                          ),
                          ListTile(
                            leading: Icon(Icons.email_rounded),
                            title: Text("Email"),
                            subtitle: Text("usuario@gmail.com"),
                          ),
                          Divider(
                            color: Colors.blueGrey.shade200,
                            height: 1,
                            thickness: 0.5,
                            indent: 20,
                            endIndent: 20,
                          ),
                          ListTile(
                            leading: Icon(Icons.phone_callback_rounded),
                            title: Text("Telefone"),
                            subtitle: Text("(85) 98888-8888"),
                          ),
                          Divider(
                            color: Colors.blueGrey.shade200,
                            height: 1,
                            thickness: 0.5,
                            indent: 20,
                            endIndent: 20,
                          ),
                          SizedBox(height: 8),
                          ListTile(
                            leading: Icon(Icons.account_box_rounded),
                            title: Text("Sobre mim"),
                            subtitle: Text(
                                "Sou um usuário desse ótimo aplicativo 😊."),
                          ),
                        ]),
                      ]),
                    ),
                  ),
                ]),
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}
