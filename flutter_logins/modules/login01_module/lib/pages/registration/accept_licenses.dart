import 'dart:ui';

import 'package:flutter/material.dart';

class AcceptLicenses extends StatelessWidget {
  const AcceptLicenses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Termos e Condições'),
      ),
      body: SingleChildScrollView(
        child: Text(
            'Eu, Nome do Usuário, aceito os Termos e Condições de uso deste aplicativo.'),
      ),
    );
  }
}
