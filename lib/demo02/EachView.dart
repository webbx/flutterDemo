import 'package:flutter/material.dart';

class EachView extends StatefulWidget {
    String _title;
    EachView(this._title);
    @override
    _State createState() => _State();
}

class _State extends State<EachView> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: Text(widget._title)),
            body: Center(
                child: Text('我是'+ widget._title + '组件页面'),
            ),
        );
    }
}
