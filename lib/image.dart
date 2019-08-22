import 'package:flutter/material.dart';

void main() => runApp(ImageApp());

class ImageApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp (
            title: 'Image Demo',
            home: Scaffold(
                appBar: new AppBar(title: new Text('Image组件')),
                body: Center(
                    child: Container(
                        // image组件
                        child: new Image.network(
                            'https://avatars2.githubusercontent.com/u/26587649?s=460&v=4',
                            // 图片显示方式
                            fit: BoxFit.scaleDown,
                            color: Colors.deepOrange,
                            colorBlendMode: BlendMode.darken,
                            repeat: ImageRepeat.repeat,
                        ),
                        width: 500.0,
                        height: 500.0,
                        color: Colors.lightBlue,
                    )
                )
            ),
        );
    }
}