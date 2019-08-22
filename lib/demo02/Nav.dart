import 'package:flutter/material.dart';
import './BottomAppBarDemo.dart';
void main() => runApp(Nav());

class Nav extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Demo',
            // 自定义主题
            theme: ThemeData(
                primarySwatch: Colors.lightBlue
            ),
            home: BottomAppBarDemo()
        );
    }
}