import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Icon> scoreKeeper = [
    Icon(
      Icons.check,
      color: Colors.green,
    ),
    Icon(
      Icons.close,
      color: Colors.red,
    )
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Center(
                child: Text(
              'Hello',
              style: TextStyle(color: Colors.white, fontSize: 20),
            )),
            flex: 5,
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 32),
            child: FlatButton(
              onPressed: () {
                setState(() {
                  scoreKeeper.add(Icon(Icons.check, color: Colors.green));
                });
              },
              child: Text(
                'True',
                style: TextStyle(fontSize: 20),
              ),
              color: Colors.green,
              textColor: Colors.white,
            ),
          )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: FlatButton(
              onPressed: () {
                setState(() {
                  scoreKeeper.add(Icon(Icons.close, color: Colors.red));
                });
              },
              child: Text(
                'False',
                style: TextStyle(fontSize: 20),
              ),
              color: Colors.red,
              textColor: Colors.white,
            ),
          )),
          Row(
            children: scoreKeeper,
          )
        ],
      ),
    );
  }
}

