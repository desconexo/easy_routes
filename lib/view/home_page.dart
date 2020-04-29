import 'package:easyroutes/view/second_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rotas no Flutter"),
      ),
      body: SafeArea(
        child: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => SecondPage(),
                    ),
                  );
                },
                child: Text("ROTA SIMPLES (PADRÃO)"),
              ),
              RaisedButton(
                onPressed: () async {
                  dynamic response =
                      await Navigator.of(context).pushNamed("/second");
                },
                child: Text("NAMED ROUTE"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
