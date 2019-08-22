import 'package:flutter/material.dart';

void main() => runApp(Video());

class Video extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Demo',
            home: Scaffold(
                body: Center(
                    child: Text('我是video组件页面')
                ),
            ),
        );
    }
}