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
    return Container(
      child: Center(
        child: GestureDetector(
          child: Text('Click: $counter'),
          onTap: (){
            setState(() {
              counter++;
              print(counter);
            });
          },
        )//pressionar na tela, lado direito, esquerdo
      ),
    );
  }
  
}