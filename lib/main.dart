import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp (
            title: 'Text Demo',
            home: Scaffold(
                appBar: new AppBar(title: new Text('title')),
//                body: Center(
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
//                    child: Container(
//                        child: new Text('hello wangbo', style: TextStyle(fontSize: 25)),
//                        alignment: Alignment.topLeft,
//                        width: 500.0,
//                        height: 400.0,
////                        color: Colors.lightBlue,
//                        // padding边距
//                        // padding: const EdgeInsets.fromLTRB(30.0, 20.0, 10.0, 20.0),
//                        padding: const EdgeInsets.all(30.0),
//                        margin: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
//                        decoration: new BoxDecoration(
//                            // 渐变色
//                            gradient: const LinearGradient(colors: [Colors.lightBlue, Colors.green, Colors.pink]),
//                            border: Border.all(width: 5.0, color: Colors.blue)
//                        ),
//                    )
//                child: Container(
//                    // image组件
//                    child: new Image.network(
//                        'https://avatars2.githubusercontent.com/u/26587649?s=460&v=4',
//                        // 图片显示方式
//                        fit: BoxFit.scaleDown,
//                        color: Colors.deepOrange,
//                        colorBlendMode: BlendMode.darken,
//                        repeat: ImageRepeat.repeat,
//                    ),
//                    width: 500.0,
//                    height: 500.0,
//                    color: Colors.lightBlue,
//                ))
//            )
//                body: new ListView(
//                    children: <Widget>[
//                        new ListTile(
//                            leading: new Icon(Icons.perm_camera_mic),
//                            title: new Text('perm_camera'),
//                        ),
//                        new ListTile(
//                            leading: new Icon(Icons.access_alarm),
//                            title: new Text('access_alarm'),
//                        ),
//                        new Image.network('https://avatars2.githubusercontent.com/u/26587649?s=460&v=4'),
//                        new Image.network('https://avatars2.githubusercontent.com/u/26587649?s=460&v=4')
//                    ],
//                ),
                body: Center(
                    child: Container(
                        height: 200.0,
                        child: new ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                                new Container(
                                    width: 300.0,
                                    color: Colors.lightBlue,
                                ),
                                new Container(
                                    width: 300.0,
                                    color: Colors.green,
                                ),
                                new Container(
                                    width: 300.0,
                                    color: Colors.pink,
                                ),
                                new Container(
                                    width: 300.0,
                                    color: Colors.blue,
                                )
                            ],
                        ),
                    ),
                ),
        );
    }
}