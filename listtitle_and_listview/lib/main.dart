import 'package:flutter/material.dart';
import 'screens/second_page.dart';
import 'screens/first_page.dart';
import 'screens/third_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        brightness:Brightness.dark,
        primarySwatch: Colors.grey,
      ),
      home: MyHomePage(title: 'Accessibility Options'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),

      body:Container(
        child:ListView(
          scrollDirection: Axis.vertical,
          children: [
            ListTile(
              leading: Icon(Icons.brightness_auto),
              title: Text('Brightness Auto'),
              subtitle:Text('Change the Brightness'),
              trailing:Icon(Icons.menu),
              onTap: (){},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.image),
              title: Text('Change Image'),
              subtitle:Text('Change the Image'),
              trailing:Icon(Icons.menu),
              onTap: (){},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.keyboard),
              title: Text('Keyboard layout'),
              subtitle:Text('Change the Keyboard Layout'),
              trailing:Icon(Icons.menu),
              onTap: (){},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.ac_unit),
              title: Text('Ring Option'),
              subtitle:Text('Change the Ring Option'),
              trailing:Icon(Icons.menu),
              onTap: (){},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.build),
              title: Text('Settings'),
              subtitle:Text('Change Settings'),
              trailing:Icon(Icons.menu),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.nature_people),
              title: Text('Near'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.backup),
              title: Text('Backups'),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(
                builder: (_){
                  return FirstPage();
                }
                ));

          //    Navigator.of(context).pushNamed('/second');  //by using route path
              },
              child: Icon(Icons.looks_one,color:Colors.lightGreen),
              backgroundColor: Colors.deepPurpleAccent,
          ),
          FloatingActionButton(
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (_){
                    return SecondPage();
                  }
              ));

              //    Navigator.of(context).pushNamed('/second');  //by using route path
            },
            child: Icon(Icons.looks_two,color:Colors.lightBlue),
            backgroundColor: Colors.deepPurpleAccent,
          ),
          FloatingActionButton(
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (_){
                    return ThirdPage();
                  }
              ));

              //    Navigator.of(context).pushNamed('/second');  //by using route path
            },
            child: Icon(Icons.looks_3,color:Colors.yellowAccent),
            backgroundColor: Colors.deepPurpleAccent,
          ),
        ],
      ),
    );
  }
}
