import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Center(
          child: new Text('Primera Pagina',
          style: new TextStyle(fontSize: 25.0, color: Colors.purple),
          )),
    );
  }
}
