import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Demo',
            home: Scaffold(
                appBar: new AppBar(
                    title: new Text('title'),
                ),
                body: Center(
                    child: MaterialButton(
                        child: Icon(
                            Icons.navigate_before,
                            color: Colors.lightBlue,
                            size: 60.0
                        ),
                        onPressed: () => {
                            Navigator.of(context).pop()
                        }
                    )
                ),
            ),
        );
    }
}