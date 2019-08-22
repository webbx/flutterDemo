/**
 * 底栏导航
 */
import 'package:flutter/material.dart';
import './pages/Home.dart';
import './pages/About.dart';
import './pages/Video.dart';
import './pages/Pages.dart';

void main() => runApp(Nav());

class Nav extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Flutter BottomNavgationBar Demo',
            home: Scaffold(
                appBar: new AppBar(
                    title: new Text('BottomNavgationBar'),
                ),
                body: BottomNavigationWidget()
            ),
        );
    }
}

class BottomNavigationWidget extends StatefulWidget {
    @override
    _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> with SingleTickerProviderStateMixin {
    AnimationController _controller;
    // 当前页面索引
    int _currentIndex = 0;
    // 列表
    List<Widget> list = List();
    final _BottomNavigationWidgetColor = Colors.blue;
    
    

    // 充重写initState方法
    @override
    void initState() {
        _controller = AnimationController(vsync: this);
        // 将引入的模块放到list
        list
            ..add(Home())
            ..add(Pages())
            ..add(Video())
            ..add(About());
        super.initState();
    }

    @override
    void dispose() {
        _controller.dispose();
        super.dispose();
    }
  
  @override
  Widget build(BuildContext context) {
        return Scaffold(
            body: list[_currentIndex],
            bottomNavigationBar: BottomNavigationBar(
                items: [
                    BottomNavigationBarItem(
                        icon: Icon(
                            Icons.home,
                            color: _BottomNavigationWidgetColor,
                        ),
                        title: Text(
                            'Home',
                            style: TextStyle(color: Colors.cyan)
                        )
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(
                            Icons.list,
                            color: _BottomNavigationWidgetColor,
                        ),
                        title: Text(
                            'Pages',
                            style: TextStyle(color: Colors.cyan)
                        )
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(
                            Icons.ondemand_video,
                            color: _BottomNavigationWidgetColor,
                        ),
                        title: Text(
                            'Video',
                            style: TextStyle(color: Colors.cyan)
                        )
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(
                            Icons.account_box,
                            color: _BottomNavigationWidgetColor,
                        ),
                        title: Text(
                            'About',
                            style: TextStyle(color: Colors.cyan)
                        )
                    )
                ],
                currentIndex: _currentIndex,
                onTap: (int index) => {
                    setState(() => {
                        _currentIndex = index
                    })
                },
            ),
        );
    }
}
