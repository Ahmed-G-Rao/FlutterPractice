// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:practice_app/main.dart';

class NavigationBottom extends StatefulWidget {
  const NavigationBottom({super.key});

  @override
  State<NavigationBottom> createState() => _NavigationBottomState();
}

class _NavigationBottomState extends State<NavigationBottom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Text("Navigation Bottom")],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.amber,
        child: Container(
          child: Row(children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyApp()));
                },
                child: Text("Home"))
          ]),
        ),
      ),
    );
  }
}
