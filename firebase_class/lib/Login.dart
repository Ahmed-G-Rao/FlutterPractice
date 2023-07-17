// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_class/Register.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  void login() async {
    final String email = _email.text.trim();
    final String password = _password.text;

    FirebaseAuth auth = FirebaseAuth.instance;
    FirebaseFirestore db = FirebaseFirestore.instance;

    final UserCredential user =
        await auth.signInWithEmailAndPassword(email: email, password: password);
    final DocumentSnapshot snapshot =
        await db.collection('users').doc(user.user?.uid).get();
    final data = snapshot.data();
    print(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(20),
        child: SafeArea(
          child: Column(
            children: [
              TextField(
                controller: _email,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "email"),
              ),
              SizedBox(height: 30),
              TextField(
                controller: _password,
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Password"),
              ),
              SizedBox(height: 30),
              ElevatedButton(onPressed: login, child: Text("Login")),
              SizedBox(height: 470),
              GestureDetector(
                child: Text("Register"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Register()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
