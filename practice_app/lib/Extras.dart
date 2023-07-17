import 'package:flutter/material.dart';

import 'WhatsApp.dart';

class Extras extends StatefulWidget {
  const Extras({super.key});

  @override
  State<Extras> createState() => _ExtrasState();
}

class _ExtrasState extends State<Extras> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.center,
          child: Container(
            padding: EdgeInsets.only(left: 60, top: 80),
            width: (MediaQuery.of(context).size.width) / 2,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.amberAccent,
              borderRadius: BorderRadius.circular(50),
              gradient: RadialGradient(
                colors: [Colors.cyan, Colors.purpleAccent],
              ),
            ),
            child: const Text("BOX HELLO"),
          ),
        ),
        Container(
          child: Align(
            alignment: Alignment.center,
            child: const Text(
              "TEST",
              style: TextStyle(
                color: Colors.cyan,
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Container(
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/kingBobby.jfif'),
            radius: 70,
          ),
        ),
        Stack(
          children: [
            Positioned(
              child: Container(
                color: Colors.amberAccent,
                height: 100,
                width: 100,
              ),
            ),
            Positioned(
              child: Container(
                color: Colors.blue,
                height: 100,
                width: 100,
              ),
            ),
            Positioned(
              child: Container(
                color: Colors.purple,
                height: 100,
                width: 100,
              ),
            ),
            Positioned(
              child: Container(
                color: Colors.cyan,
                height: 100,
                width: 100,
              ),
            ),
          ],
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => WhatsApp()),
            );
          },
          child: const Text("WhatsApp"),
        ),
      ],
    );
  }
}
