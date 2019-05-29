import 'package:flutter/material.dart';

void main() => runApp(CardWidget());

class CardWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        var card = new Card(
            child: Column(
                children: <Widget>[
                    ListTile(
                        title: Text('陕西省西安市', style: TextStyle(fontSize: 25)),
                        subtitle: Text('王博：hello'),
                        leading: new Icon(Icons.access_time)
                    ),
                    new Divider(),
                    ListTile(
                        title: Text('陕西省西安市', style: TextStyle(fontSize: 25)),
                        subtitle: Text('王博：hello'),
                        leading: new Icon(Icons.access_time)
                    ),
                    new Divider(),
                    ListTile(
                        title: Text('陕西省西安市', style: TextStyle(fontSize: 25)),
                        subtitle: Text('王博：hello'),
                        leading: new Icon(Icons.access_time)
                    ),
                    new Divider()
                ],
            ),    
        );
        
        return MaterialApp(
            title: 'Card Widget Demo',
            home: Scaffold(
                appBar: new AppBar(
                    title: new Text('卡片布局'),
                ),
                body: Center(
                    child: card
                )
            ),
        );
    }
}