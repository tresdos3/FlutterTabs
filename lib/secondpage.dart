import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Center(
          child: new Text('Segunda Pagina :)',
            style: new TextStyle(fontSize: 25.0, color: Colors.purple),
          )),
    );
  }
}