import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(
                'https://w.wallhaven.cc/full/j5/wallhaven-j5mz95.png'),
          ),
          Text(
            'Angela Yu',
            style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          Text(
            'FLUTTER DEVELOPER',
            style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.5,
                fontFamily: 'Source Sans Pro'),
          ),
          SizedBox(
            height: 25,
            width: 150,
            child: Divider(
              color: Colors.teal[100],
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: ListTile(
              leading: Icon(
                Icons.phone,
                color: Colors.teal,
              ),
              title: Text(
                '+84 123 456 789',
                style: TextStyle(
                  color: Colors.teal,
                  fontFamily: 'Source Sans Pro',
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: ListTile(
              leading: Icon(
                Icons.mail,
                color: Colors.teal,
              ),
              title: Text(
                'angela@email.com',
                style: TextStyle(
                    color: Colors.teal,
                    fontSize: 20,
                    fontFamily: 'Source Sans Pro'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
