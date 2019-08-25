import 'package:flutter/material.dart';
import './WarpDemo.dart';
void main() => runApp(Main());

class Main extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Demo',
            home: WarpDemo()
        );
    }
}