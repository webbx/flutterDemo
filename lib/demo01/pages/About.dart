import 'package:flutter/material.dart';

class About extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Demo',
            home: Scaffold(
                body: Center(
                    child: Text('我是about组件页面')
                ),
            ),
        );
    }
}