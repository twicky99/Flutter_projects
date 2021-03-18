import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
     title: "Flutter Stateless and Stateful Widgets",
     home: HomePage(),
    );
  }
}


// < -------------------STATEFULL WIDGET--------------------------->
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int count =0;

  void increment(){
    setState(() {
      count=count+1;
      print(count);
    });
  }


  void decrement(){
    setState(() {
      count=count-1;
      print(count);
    });
  }
  

  void refresh(){
    setState(() {
      count=0;
      print(count);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Stateless and Stateful')
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You have the button times',
            style:TextStyle(fontSize: 25.0),
            ),
            Text('$count',
            style:Theme.of(context).textTheme.display1,
            )
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: increment,
          ),
          FloatingActionButton(
            child: Icon(Icons.minimize),
            onPressed: decrement,
          ),
          FloatingActionButton(
            child: Icon(Icons.refresh),
            onPressed: refresh,
          ),
        ],
      ),
    );
  }
}



// < -------------------STATELESS WIDGET--------------------------->

// class HomePage extends StatelessWidget {
//   int count =0;

//   void increment(){
//     count=count+1;
//     print(count);
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title:Text('Stateless and Stateful')
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text('You have the button times',
//             style:TextStyle(fontSize: 25.0),
//             ),
//             Text('$count',
//             style:Theme.of(context).textTheme.display1,
//             )
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.add),
//         onPressed: increment,
//       ),
//     );
//   }
// }