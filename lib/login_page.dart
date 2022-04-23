import 'package:flutter/material.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = "";
  String senha = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //anteriormente estava Material
      body: SingleChildScrollView(
        //rolagem
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                        height: 5,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                  SizedBox(
                    //colocar espaçamento entre os campos
                    height: 1,
                  ),
                  Image.network(
                    'https://cdn.icon-icons.com/icons2/1786/PNG/128/user-manage_114453.png',
                    width: 70, //tamanho imagem
                    height: 70,
                  ),
                  SizedBox(
                    //colocar espaçamento entre os campos
                    height: 25,
                  ),
                  TextField(
                    onChanged: (text) =>
                        email = text, //retorna o texto  que ta escrito
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    //colocar espaçamento entre os campos
                    height: 25,
                  ),
                  TextField(
                    onChanged: (text) =>
                        senha = text, //retorna o texto  que ta escrito
                    obscureText: true, //não mostrar a senha
                    decoration: InputDecoration(
                      labelText: 'Senha',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    //colocar espaçamento entre os campos
                    height: 25,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        if (email == 'wes.kalline@gmail.com' &&
                            senha == '123') {
                          print('Login Correto');
                          //Navigator.of(context).push( aqui aparece uma seta para voltar a tela de login no comando abaixo não
                          Navigator.of(context).pushReplacementNamed(
                              '/home'); //esse '/home' é uma rota que vem do app_widget, se o login estiver correto, vai para outra tela
                        } else {
                          print('Login Incorreto');
                        }
                      },
                      child: Text(
                        'Entrar',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )) //botão
                ],
              )),
        ),
      ),
    );
  }
}
