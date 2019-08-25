import 'package:flutter/material.dart';
import './ToggleDemo.dart';
import './toggleListDemo.dart';
void main() => runApp(Main());

class Main extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Demo',
            theme: ThemeData.dark(),
//            home: ToggleDemo()
            home: ExpansionPanelListDemo()
        );
    }
}