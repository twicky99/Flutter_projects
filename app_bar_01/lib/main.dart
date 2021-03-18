import 'package:flutter/material.dart';
//import 'package:device_preview/device_preview.dart';

void main() => runApp(
  // DevicePreview(
  //   //enabled: !kReleaseMode,
  //   builder: (context) => MyApp(), // Wrap your app
  // ),
  MainApp()
);

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Flutter One"),
//         ),
//         body:Center(
//           child:Text("Hello Earth!!!" ,style:TextStyle(fontSize: 20.0),
//           )
//         )
//       ),
//     );
//   }
// }
class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:MyApp(),
    );
  }
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Flutter 02"),
          leading: IconButton(
            icon: Icon(Icons.menu),  //for the hamburger type menu icon
            onPressed: (){},
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search),  //for the hamburger type menu icon
              onPressed: (){},  //can write functionality inside the curly brackets
            ),
            IconButton(
              icon: Icon(Icons.more_vert),  //for the hamburger type menu icon
              onPressed: (){},
            ),
          ],
          // flexibleSpace: Icon(
          //   Icons.photo_camera,
          //   size: 75.0,
          //   color: Colors.white10,
          // ),
          flexibleSpace: Image.asset(
            "assets/first.jpg",
            fit:BoxFit.cover,
          ),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_car),text: "Car",),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.directions_car),tab1(),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}

Widget tab1(){
   return Container(
    child:Center(
       child: Text('Test'),
    )
   );
}
 