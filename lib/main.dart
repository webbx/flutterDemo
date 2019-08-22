import 'package:flutter/material.dart';

void main() {
    runApp(MaterialApp(
       title: '这里是首页',
        home: FirstPage()
    ));
}
class FirstPage extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            home: Scaffold(
                appBar: new AppBar(title: new Text('点击获取子数据')),
                body: new Center(
                    child: RouteButton()
                )
            )
        );
    }
}

class RouteButton extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return RaisedButton(
            child: new Text('找子集'),
            onPressed: (){
                _navigateToSon(context);
            },
        );
    }
    _navigateToSon(BuildContext context) async {
        final result = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Son()));
        
        // 底部显示返回信息
        Scaffold.of(context).showSnackBar(SnackBar(content: new Text('$result')));
    }
}

class Son extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: new AppBar(title: new Text('这里是子集')),
            body: Center(
                child: Column(
                    children: <Widget>[
                        new RaisedButton(
                            child: new Text('hello'),
                            onPressed: (){
                                Navigator.pop(context, 'hello: 18322223234');
                            },
                        ),
                        new RaisedButton(
                            child: new Text('world'),
                            onPressed: (){
                                Navigator.pop(context, 'world: 17232221212');
                            },
                        ),
                        new RaisedButton(
                            child: new Text('java'),
                            onPressed: (){
                                Navigator.pop(context, 'java: 13822373737');
                            },
                        ),
                        new Container(
                            child: Container(
                                // image组件
                                child: Image.asset('images/header.jpg',
                                    // 图片显示方式
                                    fit: BoxFit.cover,
                                    colorBlendMode: BlendMode.darken
                                ),
                                width: 500.0,
                                height: 500.0,
                                color: Colors.lightBlue
                            )
                        )
                    ],
                ),
            ),
        );
    }
}

