import 'package:flutter/material.dart';

void main() => runApp(ListViewImageApp());

class ListViewImageApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp (
            title: 'ListViewImage Demo',
            home: Scaffold(
                appBar: new AppBar(title: new Text('ListViewImage')),
                body: Center(
                    child: Container(
                        height: 200.0,
                        child: new ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                                new Container(
                                    width: 300.0,
                                    color: Colors.lightBlue,
                                ),
                                new Container(
                                    width: 300.0,
                                    color: Colors.green,
                                ),
                                new Container(
                                    width: 300.0,
                                    color: Colors.pink,
                                ),
                                new Container(
                                    width: 300.0,
                                    color: Colors.blue,
                                )
                            ],
                        ),
                    ),
                ),
            ),
        );
    }
}