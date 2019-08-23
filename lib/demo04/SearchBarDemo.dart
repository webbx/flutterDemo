import 'package:flutter/material.dart';
import './asset.dart';

class SearchBarDemo extends StatefulWidget {
    @override
    _SearchBarDemoState createState() => _SearchBarDemoState();
}

class _SearchBarDemoState extends State<SearchBarDemo> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('search demo'),
                actions: <Widget>[
                    IconButton(
                        icon: Icon(Icons.search),
                        onPressed: () => {
                            showSearch(context: context, delegate: SearchBarDelegate())
                        },
                    )
                ],
            ),
        );
    }
}

class SearchBarDelegate extends SearchDelegate<String> {
    // 重写清空按钮操作
    @override
    List<Widget> buildActions(BuildContext context) {
        return [
            IconButton(
                icon: Icon(Icons.close),
                onPressed: () => {
                    query = ''
                },
            )
        ];
    }
    
    // 重写返回按钮操作
    @override
    Widget buildLeading(BuildContext context) {
        return IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => close(context, null),
        );
    }
    
    // 重写搜索结果展示
    @override
    Widget buildResults(BuildContext context) {
        return Container(
            width: 100.0,
            height: 100.0,
            child: Card(
                color: Colors.redAccent,
                child: Center(
                    child: Text(query),
                ),
            )
        );
    }

    // 重写搜索提示
    @override
    Widget buildSuggestions(BuildContext context) {
        final suggestList = query.isEmpty ? defaultList : searchList.where((input) => input.startsWith(query)).toList();
        
        return ListView.builder(
            itemCount: suggestList.length,
            itemBuilder: (context, index) => ListTile(
                title: RichText(
                    // 搜索结果加粗
                    text: TextSpan(
                        text: suggestList[index].substring(0, query.length),
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold
                        ),
                        // 非搜索结果射者
                        children: [
                            TextSpan(
                                text: suggestList[index].substring(query.length),
                                style: TextStyle(
                                    color: Colors.brown
                                )
                            )
                        ]
                    )
                ),
            ),
        );
    }
}