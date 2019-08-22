import 'package:flutter/material.dart';

void main() => runApp(ListViewApp());

class ListViewApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp (
            title: 'ListView Demo',
            home: Scaffold(
                appBar: new AppBar(title: new Text('ListView组件')),
                body: new ListView(
                    children: <Widget>[
                        new ListTile(
                            leading: new Icon(Icons.perm_camera_mic),
                            title: new Text('perm_camera'),
                        ),
                        new ListTile(
                            leading: new Icon(Icons.access_alarm),
                            title: new Text('access_alarm'),
                        ),
                        new Image.network('https://avatars2.githubusercontent.com/u/26587649?s=460&v=4'),
                        new Image.network('https://avatars2.githubusercontent.com/u/26587649?s=460&v=4')
                    ],
                ),
            ),
        );
    }
}