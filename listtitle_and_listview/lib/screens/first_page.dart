import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Vertical Scrolling'),
    ),
      body: ListView(
//        child:Column(
//          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'List View'
            ),
            Container(
              height:200,
              color:Colors.white,
            ),
            Container(
              height: 200,
              color:Colors.grey,
            ),
            Container(
              height: 200,
              color:Colors.orange,
            )
          ],
//        )
//
      ),
    );
  }
}
