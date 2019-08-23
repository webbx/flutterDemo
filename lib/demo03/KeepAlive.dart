import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
    @override
    _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with AutomaticKeepAliveClientMixin{
    int _count = 0;
    
    @override
    bool get wantKeepAlive => true;
    
    void _incrementCounter() {
        setState(() {
            _count++;
        });
    }
    
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                        Text('点一次数字加1'),
                        Text(
                            '$_count',
                            style: Theme.of(context).textTheme.display1
                        ),
                    ],
                ),
            ),
            floatingActionButton: FloatingActionButton(
                onPressed: _incrementCounter,
                tooltip: '增加',
                child: Icon(Icons.add),
            ),
        );
    }
}
