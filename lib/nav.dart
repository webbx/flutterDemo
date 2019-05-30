import 'package:flutter/material.dart';

void main() {
    runApp(MaterialApp(
        title: '导航首页',
        home: new MyApp(),
    ));
}

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp (
            title: '导航首页 Demo',
            home: Scaffold(
                appBar: new AppBar(title: new Text('导航首页')),
                body: Center(
                    child: RaisedButton(
                        child: new Text('下一页'),
                        onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => new ListViewDynamic()));
                        }
                    ),
                )
            )
        );
    }
}

class ListViewDynamic extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return new Scaffold(
            appBar: new AppBar(title: new Text('导航详情')),
            body: Center(
                child: RaisedButton(
                    child: new Text('返回'),
                    onPressed: (){
                        Navigator.pop(context);
                    }
                    
                ),
            ),
        );
    }
}