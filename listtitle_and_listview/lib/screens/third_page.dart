import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  var items = List<String>.generate(100, (index) => 'Items $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Item List - ListView Builder'),
        ),
        body:ListView.builder(

          itemCount: items.length,
          itemBuilder: (context,index){   // using listviewBuilder to change the value dynamically.if an actual length is not known by the user should use which ensures good memory performance.
            return ListTile(
              title:Text(items[index])
            );
          },
        ),
    );
  }
}
