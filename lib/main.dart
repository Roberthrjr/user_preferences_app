import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Preferencias de usuario local'),
        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}
