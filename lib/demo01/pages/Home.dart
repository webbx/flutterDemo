import 'package:flutter/material.dart';

class Home extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'navDemo之home页面',
            home: Scaffold(
                body: Center(
                    child: Text('我是home组件页面')
                ),
            ),
        );
    }
}