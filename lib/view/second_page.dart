import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final String data;

  SecondPage({this.data});

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Rotas no Flutter"),
      ),
      body: SafeArea(
          child: Column(
        children: <Widget>[
          Text("Segunda tela"),
          RaisedButton(
            onPressed: () {
              Navigator.of(context).pop("teste");
            },
            child: Text("VOLTAR"),
          )
        ],
      )),
    );
  }
}
