import 'package:flutter/material.dart';

import 'app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0; //contador para o n-úmero de vezes
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          //colocando uma barra com logo
          title: Text(
        'App ADS'),
        actions: [CustomSwitch()],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        //para o caso do elemento estourar, você não coloca Column, coloca ListView
        ///child: Column(
        child: ListView(
          //para colocar o scroll para horizontal ou vertical
          //scrollDirection: Axis.vertical,
          //scrollDirection: Axis.horizontal,
          //mainAxisAlignment: MainAxisAlignment.center, //centralizar o botão no centro
          children: [
            Center(
                child: CustomSwitch()),
                Container(
                  height: 150,
                ),
                Row( //colocar linhas
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.green,
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.black,
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.green,
                    ),
                  ]
                )
          ],
        ),
      ), //colocando uma barra),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_circle),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Switch(
        value: AppController.instance.isDark,
        onChanged: (value) {
          AppController.instance.changeTheme();
        });
  }
}
