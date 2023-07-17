// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, unused_import, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('App Page'),
        ),
        body: Column(
          children: [
            Text("APP PAGE"),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("HOME SCREEN"))
          ],
        ));
  }
}
