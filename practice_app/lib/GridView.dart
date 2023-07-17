// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, unused_import, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers
import 'package:flutter/material.dart';

class GridViewBuilder extends StatefulWidget {
  const GridViewBuilder({super.key});

  @override
  State<GridViewBuilder> createState() => _GridViewBuilderState();
}

class _GridViewBuilderState extends State<GridViewBuilder> {
  var Namelisting = [
    "Abdullah",
    "Bilal",
    "Cemal",
    "Dawood",
    "Ebrahim",
    "Faisal",
    "Ghazala",
    "Hassan",
    "Ibrahim",
    "Jamil",
    "Khalid",
    "Layla",
    "Mohammed",
    "Nadia",
    "Omar",
    "Parveen",
    "Qasim",
    "Rahim",
    "Safiya",
    "Tariq",
    "Usman",
    "Vaseem",
    "Waseem",
    "Xenia",
    "Yasir",
    "Zahra"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.count(
          crossAxisCount: 3,
          children: List.generate(Namelisting.length, (index) {
            return Container(
              color: Colors.cyan[50],
              child: Text(Namelisting[index]),
            );
          })),
    ));
  }
}
