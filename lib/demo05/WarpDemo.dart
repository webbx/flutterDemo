import 'package:flutter/material.dart';

class WarpDemo extends StatefulWidget {
    @override
    _State createState() => _State();
}

class _State extends State<WarpDemo> {
    List<Widget> list;
    
    @override
    void initState() {
        list = List<Widget>()
            ..add(buildAddButton());
        super.initState();
    }
    
    @override
    Widget build(BuildContext context) {
        // 获取屏幕宽度、高度
        final width = MediaQuery.of(context).size.width;
        final height = MediaQuery.of(context).size.height;
        return Scaffold(
            appBar: AppBar(
                title: Text('流式布局'),
            ),
            body: Center(
                child: Opacity(
                    opacity: 0.8,
                    child: Container(
                        width: width,
                        height: height / 2.0,
                        color: Colors.black12,
                        child: Wrap(
                            children: list,
                            spacing: 6.0,
                        ),
                    ),
                ),
            ),
        );
    }
    
    Widget buildAddButton() {
        // 手势识别事件
        return GestureDetector(
            onTap: (){
                if(list.length < 9) {
                    // 更新状态
                    setState((){
                        list.insert(list.length - 1, buildPhoto());
                    });
                }
            },
        child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    width: 80.0,
                    height: 80.0,
                    color: Colors.lightBlue,
                    child: Icon(Icons.add),
                ),
            ),
        );
    }
    
    Widget buildPhoto() {
        return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                width: 80.0,
                height: 80.0,
                color: Colors.grey,
                child: Center(child: Text('照片')),
            ),
        );
    }
}
