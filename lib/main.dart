import 'package:flutter/material.dart';
import 'drawer.dart';
import 'data.dart';
import 'UI_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();

    //throw UnimplementedError();
  }
}

class _MyAppState extends State<MyApp> {
  bool _state = true;

  void _change() {
    setState(() {
      _state = !_state;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('UI Practice')),
        drawer: AppDrawer(),
        body: Center(
          child: Column(
            children: <Widget>[
              FlatButton(
                child: Text('Press Button'),
                onPressed: _change,
              ),
              _state ? Text('Home') : Text('Away'),
              SizedBox(
                height: 150,
              ),
            ],
          ),
        ),
      ),
      routes: {
        UIScreen.routename: (ctx) => UIScreen(),
      },
    );

    // throw UnimplementedError();
  }
}
