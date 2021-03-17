import 'package:flutter/material.dart';
//import 'package:device_preview/device_preview.dart';

void main() => runApp(
  // DevicePreview(
  //   //enabled: !kReleaseMode,
  //   builder: (context) => MyApp(), // Wrap your app
  // ),
  MyApp()
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

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter 02"),
          leading: IconButton(
            icon: Icon(Icons.menu),  //for the hamburger type menu icon
            onPressed: (){},
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search),  //for the hamburger type menu icon
              onPressed: (){},
            ),
            IconButton(
              icon: Icon(Icons.more_vert),  //for the hamburger type menu icon
              onPressed: (){},
            ),
          ],
          flexibleSpace: Icon(
            Icons.photo_camera,
            size: 75.0,
            color: Colors.white10,
          ),
        ),
      ),
    );
  }
}