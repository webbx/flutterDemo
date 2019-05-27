import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp (
            title: 'Text Demo',
            home: Scaffold(
                body: Center(
//                    child: Text(
//                        'hello wang, like flutterhello wang, like flutterhello wang, like flutter',
//                        textAlign: TextAlign.left,
//                        // 显示最大行数
//                        maxLines: 1,
//                        // 超过一刚=行显示...
//                        overflow: TextOverflow.ellipsis,
//                        style: TextStyle(
//                            fontSize: 25,
//                            color: Color.fromARGB(255, 244, 100, 125),
//                            decoration: TextDecoration.underline,
//                            decorationStyle: TextDecorationStyle.dashed
//                        ),
//                    ),
                    child: Container(
                        child: new Text('hello wangbo', style: TextStyle(fontSize: 25)),
                        alignment: Alignment.topLeft,
                        width: 500.0,
                        height: 400.0,
//                        color: Colors.lightBlue,
                        // padding边距
                        // padding: const EdgeInsets.fromLTRB(30.0, 20.0, 10.0, 20.0),
                        padding: const EdgeInsets.all(30.0),
                        margin: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
                        decoration: new BoxDecoration(
                            // 渐变色
                            gradient: const LinearGradient(colors: [Colors.lightBlue, Colors.green, Colors.pink]),
                            border: Border.all(width: 5.0, color: Colors.blue)
                        ),
                    )
                )
            )
        );
    }
}