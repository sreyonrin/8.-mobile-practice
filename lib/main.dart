
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() =>runApp(App());
class App extends StatefulWidget {
@override
_AppState createState() => _AppState();
}

class _AppState extends State<App> {
Container myStore(String img, String text, String price){
return Container(
width: 160.0,
child: Card(
child: Wrap(
children: <Widget>[
Image.network(img),
Text(text),
Center(
child: RaisedButton(
child: Text(price,
style: TextStyle(
color: Colors.white,
),
),
onPressed: () {},
color: Colors.purple,
),
),
],
),
),
);
}

@override
Widget build(BuildContext context) {
return MaterialApp(
debugShowCheckedModeBanner: false,
home: Scaffold(
appBar: AppBar(
title: Text("Demo App"),
backgroundColor: Colors.purple,
centerTitle: true,
),
drawer: Drawer(
  child: ListView(
    children: <Widget>[
      DrawerHeader(
        child: Center(
          child: CircleAvatar(
            radius: 60.0,
            backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqAwpnqsuzPRgEnF8V2KIgU_7bKAhK8KxgLNn6g0xIJoV6MpOH&s"),
          ),
        ),
      ),
    ],
  ),
),
body: Column(
children: <Widget>[
Expanded(
child: ListView(
scrollDirection: Axis.horizontal,
children: <Widget>[
myStore("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYuhGezjvibq64iOjpWL89dAxbJS5ijKPGYGrLpJjI_Qx7pCUA&s", "Sreyorn", "like flower"),
myStore("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYuhGezjvibq64iOjpWL89dAxbJS5ijKPGYGrLpJjI_Qx7pCUA&s", "Sreyorn", "like flower"),
myStore("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYuhGezjvibq64iOjpWL89dAxbJS5ijKPGYGrLpJjI_Qx7pCUA&s", "Sreyorn", "like flower"),
myStore("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYuhGezjvibq64iOjpWL89dAxbJS5ijKPGYGrLpJjI_Qx7pCUA&s", "Sreyorn", "like flower"),
],
),
),
Expanded(
child: ListView(
scrollDirection: Axis.vertical,
children: <Widget>[
  myStore(
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYuhGezjvibq64iOjpWL89dAxbJS5ijKPGYGrLpJjI_Qx7pCUA&s", "Sreyorn", "like flower"),
  myStore("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYuhGezjvibq64iOjpWL89dAxbJS5ijKPGYGrLpJjI_Qx7pCUA&s", "Sreyorn", "like flower"),
 
  
],
),
),
],
),
),
);
}
}