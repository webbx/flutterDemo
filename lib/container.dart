import 'package:flutter/material.dart';

void main() => runApp(ContainerApp());

class ContainerApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp (
            title: 'Container Demo',
            home: Scaffold(
                appBar: new AppBar(title: new Text('Container组件')),
                body: Center(
                    child: Container(
                        child: new Text('hello wangbo', style: TextStyle(fontSize: 25)),
                        alignment: Alignment.topLeft,
                        width: 500.0,
                        height: 400.0,
                        // 与下面的decoration不能同时
                        // color: Colors.lightBlue,
                        // padding边距
                        // padding: const EdgeInsets.fromLTRB(30.0, 20.0, 10.0, 20.0),
                        padding: const EdgeInsets.all(30.0),
                        margin: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
                        decoration: new BoxDecoration(
                            // 渐变色
                            gradient: const LinearGradient(colors: [Colors.lightBlue, Colors.green, Colors.pink]),
                            border: Border.all(width: 5.0, color: Colors.blue)
                        ),
                    )
                )
            ),
        );
    }
}