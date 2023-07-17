// ignore_for_file: prefer_const_constructors

import 'package:firebase_class/Register.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
      apiKey: "AIzaSyDH8P1GmMcOQQjfQAMTG72zle7daSewBF0", //done
      // authDomain: "study-app-f3379.firebaseapp.com",
      projectId: "flutter-project-786", //done
      // storageBucket: "study-app-f3379.appspot.com",
      messagingSenderId: "1087163962327",
      appId: "1:698426735958:android:67213b379b11a46972eaf7", //done
    ));
  } else {
    await Firebase.initializeApp();
  }
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Register(),
    );
    // return FutureBuilder(
    //   future: _initialization,
    //   builder: (context, snapshot) {
    //     if (snapshot.connectionState == ConnectionState.waiting) {
    //       // Firebase is initializing, show a loading indicator
    //       return CircularProgressIndicator();
    //     } else if (snapshot.hasError) {
    //       // An error occurred during Firebase initialization
    //       return Text('Error: ${snapshot.error}');
    //     } else {
    //       // Firebase initialization is complete, show your app
    //       return MaterialApp(
    //         debugShowCheckedModeBanner: false,
    //         title: 'Flutter Demo',
    //         home: Register(),
    //       );
    //     }
    //   },
    // );
  }
}
