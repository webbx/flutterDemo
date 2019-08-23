import 'package:flutter/material.dart';
import './SearchBarDemo.dart';
void main() => runApp(Search());

class Search extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Demo',
            home: SearchBarDemo()
        );
    }
}