
// <---------------- contains how app bars, columns and rows widgets should be used --------->
import 'package:flutter/material.dart';
//import 'package:device_preview/device_preview.dart';

void main() => runApp(
  // DevicePreview(
  //   //enabled: !kReleaseMode,
  //   builder: (context) => MyApp(), // Wrap your app
  // ),
  MainApp()
);



class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:ColumnRowApp(),
    );
  }
}


// <--------------- simple app done using MateriaApp widget with appbar and a centered text message in body---------->
// class FirstApp extends StatelessWidget {     
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


// <----------------contains how app bars, DefaultTabController,Scaffold,actions,icons,flexibleSpace,TabBar,TabBarView widgets can be used accordingly with several properties respect to each of the widgets used --------->
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Demo 02"),
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
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            tab1(),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}

// method tab1() which is created for the above MyApp class 
Widget tab1(){
   return Scaffold(
      body: Container(
        margin:EdgeInsets.all(30.0),
        //padding:EdgeInsets.all(50.0),
        //padding:EdgeInsets.symmetric(vertical:20.0,horizontal: 20.0),
        //padding:EdgeInsets.only(top:10.0,bottom:10.0),
        transform: Matrix4.rotationZ(0.8),
        //height:100.0,
        //width: double.infinity,
        color: Colors.purple[100],
        alignment: Alignment.topRight,
        child: Text(
          'Flutter !!!',
          //textAlign: TextAlign(bottom),
          style:TextStyle(
            fontSize: 20.0,
            color:Colors.white,
            fontWeight: FontWeight.bold,
            
          )
        ),  
     ),
   );
}


// <----------------contains how column widgets and row widgets can be used in different scenarios --------->
class ColumnRowApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[500],
        title: Text ('Column & Row')
      ),
    );
  }
}