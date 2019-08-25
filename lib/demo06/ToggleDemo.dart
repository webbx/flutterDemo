import 'package:flutter/material.dart';

class ToggleDemo extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('toggle demo'),
            ),
            body: Center(
                child: ExpansionTile(
                    title: Text('this is a title'),
                    leading: Icon(Icons.cloud_download),
                    // 背景颜色
                    backgroundColor: Colors.lightBlue,
                    // 子项
                    children: <Widget>[
                        ListTile(
                            title: Text('list title'),
                            subtitle: Text('list subtitle'),
                        )
                    ],
                    // 默认是否打开，true为打开
                    initiallyExpanded: true,
                ),
            )
        );
    }
}
