// ignore_for_file: curly_braces_in_flow_control_structures

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'AllFoodsModel.dart';

class AllFoods extends StatefulWidget {
  const AllFoods({super.key});

  @override
  State<AllFoods> createState() => _AllFoodsState();
}

class _AllFoodsState extends State<AllFoods> {
  Future<AllFoodsModel> getAllFoods() async {
    final response =
        await http.get(Uri.parse("http://ssr.coderouting.com/getAllFoods"));
    var jsonResponse = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      return AllFoodsModel.fromJson(jsonResponse);
    } else
      return AllFoodsModel.fromJson(jsonResponse);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getAllFoods(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: Container(child: Text("No Data")),
            );
          } else
            return ListView.builder(
              itemCount: snapshot.data?.foods?.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(snapshot.data!.foods![index].name.toString()),
                );
              },
            );
        },
      ),
    );
  }
}
