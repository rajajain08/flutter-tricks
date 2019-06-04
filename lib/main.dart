import 'package:flutter/material.dart';
import 'package:flutter_tricks/child.dart';

void main() => runApp(MaterialApp(home: Parent()));

class Parent extends StatelessWidget {
  final Child child = Child();
  @override
  Widget build(BuildContext context) {
    print("MyApp Build");
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Hello Flutter"),
            child,
          ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          child.decrease();
        },
        child: Icon(Icons.remove),
      ),
    );
  }
}
