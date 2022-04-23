import 'package:flutter/material.dart';

import 'app_controller.dart';
import 'home_page.dart';
import 'login_page.dart';

class AppWidget extends StatelessWidget {
  final String title;

  const AppWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (BuildContext context, child) {
        return MaterialApp(
          theme: ThemeData(
              primarySwatch: Colors.cyan,
              brightness: AppController.instance.isDark
              ? Brightness.dark// se é verdadeiro coloca o dark, se não coloca o modo claro
              : Brightness.light), //mudando de cor para modo claro ou escuro
          //home: LoginPage(),
          initialRoute: '/',
          routes: {
            '/': (context) => LoginPage(), //tela de inicio
            '/home': (context) => HomePage(),
          }
        );
      },
    );
  }
}
