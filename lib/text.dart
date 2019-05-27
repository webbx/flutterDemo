import 'package:flutter/material.dart';

void main() => runApp(TextApp());

class TextApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp (
            title: 'Text Demo',
            home: Scaffold(
                appBar: new AppBar(title: new Text('Text组件')),
                body: Center(
                     child: Text(
                        'hello wang, like flutterhello wang, like flutterhello wang, like flutter',
                        textAlign: TextAlign.left,
                        // 显示最大行数
                        maxLines: 1,
                        // 超过一刚=行显示...
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 25,
                            color: Color.fromARGB(255, 244, 100, 125),
                            decoration: TextDecoration.underline,
                            decorationStyle: TextDecorationStyle.dashed
                        ),
                    ),
                )
            ),
        );
    }
}