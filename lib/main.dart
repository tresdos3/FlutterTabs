import 'package:flutter/material.dart';
import './firstpage.dart' as firspage;
import './secondpage.dart' as secondpage;
import './homepage.dart' as homepage;

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Tabs',
      theme: new ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {

  TabController tabController;

  @override
  void initState() {
    tabController = new TabController(length: 3, vsync: this);
    super.initState();
  }
  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('App Tabs Demo'),
        backgroundColor: Colors.teal,
        bottom: new TabBar(
          controller: tabController,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.home),),
            new Tab(icon: new Icon(Icons.account_circle),),
            new Tab(icon: new Icon(Icons.add_a_photo),)
          ],
        ),
      ),
      body: new TabBarView(
          controller: tabController,
          children: <Widget>[
            new homepage.HomePage(),
            new firspage.FirstPage(),
            new secondpage.SecondPage(),
          ],),
    );
  }
}
