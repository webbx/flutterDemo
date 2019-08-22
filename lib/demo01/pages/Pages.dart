import 'package:flutter/material.dart';

class Pages extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Demo',
            home: Scaffold(
                body: Center(
                    child: Text('我是pages组件页面')
                ),
            ),
        );
    }
}