import 'package:flutter/material.dart';

void main() => runApp(GridApp());

class GridApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp (
            title: 'grid Demo',
            home: Scaffold(
                appBar: new AppBar(title: new Text('gridView组件')),
                body: GridView(
                    padding: const EdgeInsets.all(20.0),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        // 列数
                        crossAxisCount: 2,
                        // 行与行之间的间距
                        mainAxisSpacing: 5.0,
                        // 列与列之间的间距
                        crossAxisSpacing: 5.0,
                        childAspectRatio: 0.7
                    ),
                    children: <Widget>[
                       new Image.network('http://img5.mtime.cn/mg/2019/04/23/101008.81684544_170X256X4.jpg', fit: BoxFit.cover,),
                       new Image.network('http://img5.mtime.cn/mg/2019/03/21/105842.67810645_1280X720X2.jpg', fit: BoxFit.cover,),
                       new Image.network('http://img5.mtime.cn/mg/2019/04/23/101008.81684544_170X256X4.jpg', fit: BoxFit.cover,),
                       new Image.network('http://img5.mtime.cn/mg/2019/04/15/114602.17581769_1280X720X2.jpg', fit: BoxFit.cover,),
                       new Image.network('http://img5.mtime.cn/mg/2019/03/29/162239.92284604_1280X720X2.jpg', fit: BoxFit.cover,),
                       new Image.network('http://img5.mtime.cn/mg/2019/03/29/162239.92284604_1280X720X2.jpg', fit: BoxFit.cover,),
                       new Image.network('http://img5.mtime.cn/mg/2019/03/29/162239.92284604_1280X720X2.jpg', fit: BoxFit.cover,),
                       new Image.network('http://img5.mtime.cn/mg/2019/03/29/162239.92284604_1280X720X2.jpg', fit: BoxFit.cover,),
                       new Image.network('http://img5.mtime.cn/mg/2019/03/29/162239.92284604_1280X720X2.jpg', fit: BoxFit.cover,),
                       new Image.network('http://img5.mtime.cn/mg/2019/03/29/162239.92284604_1280X720X2.jpg', fit: BoxFit.cover,)
                    ],
                )
            ),
        );
    }
}