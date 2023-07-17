// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, unused_import, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:practice_app/AllFoods.dart';
import 'package:practice_app/App.dart';
import 'package:practice_app/Extras.dart';
import 'package:practice_app/GridView.dart';
import 'package:practice_app/ListViewBuilder.dart';
import 'package:practice_app/Login_Video8.dart';
import 'package:practice_app/WhatsApp.dart';
import 'BottomNavigation.dart';
import 'Extras.dart';

void main() {
  runApp(NavigatorWidget());
}

class NavigatorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.grey[350],
          child: ListView(
            children: [
              ListTile(
                tileColor: Colors.grey,
                leading: Text("Home"),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                selected: true,
                enabled: false,
                trailing: Icon(Icons.home),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyApp()));
                },
              ),
              ListTile(
                tileColor: Colors.teal[600],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0)),
                leading: Text("WhatsApp"),
                trailing: Icon(Icons.wechat_sharp),
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => WhatsApp()),
                      (route) => false);
                },
              ),
            ],
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => WhatsApp()));
              },
              child: Text("WhatsApp")),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Extras()));
              },
              child: Text("Extras")),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ListViewBuilder()));
              },
              child: Text("WhatsApp ListView")),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GridViewBuilder()));
              },
              child: Text("Grid View")),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NavigationBottom()));
              },
              child: Text("Bottom Navigator"))
        ],
      ),
      bottomNavigationBar: BottomAppBar(
          child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            MaterialButton(
                minWidth: 100,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => WhatsApp()));
                },
                child: Text("WhatsApp")),
            MaterialButton(
                minWidth: 100,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Extras()));
                },
                child: Text("Extras")),
            MaterialButton(
                minWidth: 100,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ListViewBuilder()));
                },
                child: Text("WhatsApp ListView")),
            MaterialButton(
                minWidth: 100,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => GridViewBuilder()));
                },
                child: Text("Grid View")),
            MaterialButton(
                minWidth: 100,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AllFoods()));
                },
                child: Text("All Foods")),
          ],
        ),
      )),
    );
  }
}
