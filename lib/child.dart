import 'package:flutter/material.dart';

class Child extends StatefulWidget {
  Child({
    Key key,
  }) : super(key: key);
  final childState = _ChildState();
  decrease() {
    childState.insideState();
  }

  _ChildState createState() {
    return childState;
  }
}

class _ChildState extends State<Child> {
  int index = 0;
  insideState() {
    print("insideState");
    setState(() {
      index--;
    });
  }

  @override
  Widget build(BuildContext context) {
    print("childState build");
    return Center(
        child: Column(
      children: <Widget>[
        Text("$index"),
        RaisedButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              index++;
            });
          },
        )
      ],
    ));
  }
}
