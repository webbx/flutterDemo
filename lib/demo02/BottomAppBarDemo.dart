import 'package:flutter/material.dart';
import 'package:flutter_app/demo01/pages/Home.dart';
import './EachView.dart';
class BottomAppBarDemo extends StatefulWidget {
    @override
    _BottomAppBarDemoState createState() => _BottomAppBarDemoState();
}

class _BottomAppBarDemoState extends State<BottomAppBarDemo> {
    List<Widget> _eachView;
    int _index = 0;
    
    @override
    void initState() {
        _eachView = List();
        _eachView..add(EachView('Home'))
        ..add(EachView('airPort'))
        ..add(EachView('bettary'))
        ..add(EachView('cloud'));
        super.initState();
    }
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            // 可交互浮动按钮
            floatingActionButton: FloatingActionButton(
                onPressed: () => {
                    // 新增一个路由，进行页面跳转
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                        return EachView('new page');
                    }))
                },
                tooltip: '新增',
                child: Icon(
                    Icons.add,
                    color: Colors.white,
                ),
            ),
            // 融合flb与navigationBar
            floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: BottomAppBar(
                color: Colors.lightBlue,
                shape: CircularNotchedRectangle(),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                        IconButton(
                            icon: Icon(Icons.home),
                            color: Colors.white,
                            onPressed: () => {
                                setState(() => {
                                    _index = 0
                                })
                            }
                        ),
                        IconButton(
                            icon: Icon(Icons.airplanemode_active),
                            color: Colors.white,
                            onPressed: () => {
                                setState(() => {
                                    _index = 1
                                })
                            }
                        ),
                        IconButton(
                            icon: Icon(Icons.battery_charging_full),
                            color: Colors.white,
                            onPressed: () => {
                                setState(() => {
                                    _index = 2
                                })
                            }
                        ),
                        IconButton(
                            icon: Icon(Icons.wb_cloudy),
                            color: Colors.white,
                            onPressed: () => {
                                setState(() => {
                                    _index = 3
                                })
                            }
                        ),
                    ],
                ),
            ),
            body: _eachView[_index],
        );
    }
}