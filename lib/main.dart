import 'package:flutter/material.dart';
import 'package:flutter_scorer/scorecard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Scorer'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Stack(
        children: <Widget>[
          Container(color: Colors.greenAccent),
          Column(
            children: <Widget>[
              Scorecard(
                teamName: "wee lezzers bois",
                nameColour: Colors.blue[600],
                cardColour: Colors.blue[500],
              ),
              Scorecard(
                teamName: "wee lezzers gals",
                nameColour: Colors.yellow[600],
                cardColour: Colors.yellow[500],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
