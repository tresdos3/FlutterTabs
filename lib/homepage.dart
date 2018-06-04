import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Center(
          child: new Text('Pagina de inicio',
            style: new TextStyle(fontSize: 25.0, color: Colors.purple),
          )),
    );
  }
}