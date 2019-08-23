import 'package:flutter/material.dart';
import './KeepAlive.dart';
void main() => runApp(Main());

class Main extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Demo',
            theme: ThemeData(
                primaryColor: Colors.lightBlue
            ),
            home: HomeLiveDemo()
        );
    }
}

class HomeLiveDemo extends StatefulWidget {
    @override
    _HomeLiveDemoState createState() => _HomeLiveDemoState();
}

// 使用with进行类似多重继承
class _HomeLiveDemoState extends State<HomeLiveDemo> with SingleTickerProviderStateMixin{
    TabController _controller;
    
    // 重写initState
    @override
    void initState() {
        super.initState();
        // vsync来自于SingleTickerProviderStateMixin
        _controller = TabController(length: 3, vsync: this);
    }
    
    // 重写销毁
    @override
    void dispose() {
        _controller.dispose();
        super.dispose();
    }
    
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('keep alive demo'),
                bottom: TabBar(
                    controller: _controller,
                    tabs: <Widget>[
                        Tab(icon: Icon(Icons.directions_car)),
                        Tab(icon: Icon(Icons.train)),
                        Tab(icon: Icon(Icons.directions_bike)),
                    ],
                ),
            ),
            body: TabBarView(
                controller: _controller,
                children: <Widget>[
                    MyHomePage(),
                    MyHomePage(),
                    MyHomePage()
                ],
            )
        );
    }
}
