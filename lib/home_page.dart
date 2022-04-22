import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState(){
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0; //contador para o número de vezes
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( //colocando uma barra com logo
        title: Text(
          'App ADS',
        )),
      body: Center( //corpo
        child: GestureDetector(
          child: Text('Click: $counter', style: TextStyle(fontSize: 50)),
          onTap: (){
            setState(() {
              counter++;
              print(counter);
            });
          },
        )//pressionar na tela, lado direito, esquerdo
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_circle),
        onPressed: (){
          setState(() {
              counter--;
            });
        },
      ),
    );
  }
  
}