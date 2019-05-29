import 'package:flutter/material.dart';

void main() => runApp(StackWidget());

class StackWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        var stack = new Stack(
            // 位置 最小0，最大1
            alignment: const FractionalOffset(0.5, 1),
            children: <Widget>[
                new CircleAvatar(
                    backgroundImage: new NetworkImage('https://avatars2.githubusercontent.com/u/26587649?s=460&v=4'),
                    radius: 100.0,
                ),
                new Positioned(
                    top: 10.0,
                    left: 50.0,
                    child: Text('wangboweb.site'),
                ),
                new Container(
                    decoration: new BoxDecoration(
                        color: Colors.lightBlue,
                    ),
                    padding: EdgeInsets.all(5.0),
                    child: Text('hello world'),
                )
            ],
        );
        return MaterialApp(
            title: 'Stack Widget Demo',
            home: Scaffold(
                appBar: new AppBar(
                    title: new Text('层叠布局'),
                ),
                body: Center(
                    child: stack
                )
            ),
        );
    }
}