import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('ListView - Horizontal')
      ),
      body: Container(
        height:150,
        child: ListView(
          scrollDirection:Axis.horizontal,
          children: [
            Container(
              width:100.0,
              height:100.0,
              color:Colors.white,
            ),
            Container(
              width:100.0,
              height:100.0,
              color:Colors.orange,
            ),
            Container(
              width:100.0,
              height:100.0,
              color:Colors.grey,
            ),
            Container(
              width:100.0,
              height:100.0,
              color:Colors.orange,
            ),
            Container(
              width:100.0,
              height:100.0,
              color:Colors.white,
            ),

          ],
        ),
      ),
    );
  }
}
