import 'package:flutter/material.dart';

void main() => runApp(RowWidget());

class RowWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Row Widget Demo',
            home: Scaffold(
                appBar: new AppBar(
                    title: new Text('水平方向布局'),
                ),
                body: new Row(
                    children: <Widget>[
                        // 灵活布局自适应
                        Expanded(
                            child: new RaisedButton(
                            // 点击事件
                            onPressed: (){},
                            color: Colors.lightBlue,
                            child: new Text('blueButton'),
                        )),
                        Expanded(
                            child: new RaisedButton(
                                // 点击事件
                                onPressed: (){},
                                color: Colors.red,
                                child: new Text('redButton'),
                            )),
                        // 不灵活布局
                        new RaisedButton(
                            // 点击事件
                            onPressed: (){},
                            color: Colors.green,
                            child: new Text('green'),
                        )
                    ],
                ),
            ),
        );
    }
}