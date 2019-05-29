import 'package:flutter/material.dart';

void main() => runApp(ColumnWidget());

class ColumnWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Column Widget Demo',
            home: Scaffold(
                appBar: new AppBar(
                    title: new Text('垂直方向布局'),
                ),
                body: Center(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                        Text('hello world'),
                        Text('hello javascript'),
                        Expanded(child: Text('hello html')),
                        Expanded(child: Text('hello css')),
                        Text('hello java')
                    ],
                )),
            ),
        );
    }
}