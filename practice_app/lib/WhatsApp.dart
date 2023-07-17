// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, unused_import, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, file_names, non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:practice_app/ListViewBuilder.dart';

var listing = [
  "a",
  "b",
  "c",
  "d",
  "e",
  "f",
  "g",
  "h",
  "i",
  "j",
  "k",
  "l",
  "m",
  "n",
  "o",
  "p",
  "q",
  "r",
  "s",
  "t",
  "u",
  "v",
  "w",
  "x",
  "y",
  "z"
];
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
List<String> ImagesAvatar = [
  "https://cdn.pixabay.com/photo/2016/04/01/12/16/car-1300629_960_720.png",
  "https://cdn.pixabay.com/photo/2016/12/03/18/57/amg-1880381_960_720.jpg",
  "https://cdn.pixabay.com/photo/2016/04/01/12/16/car-1300629_960_720.png",
  "https://cdn.pixabay.com/photo/2016/12/03/18/57/amg-1880381_960_720.jpg",
  "https://cdn.pixabay.com/photo/2016/04/01/12/16/car-1300629_960_720.png",
  "https://cdn.pixabay.com/photo/2016/12/03/18/57/amg-1880381_960_720.jpg",
  "https://cdn.pixabay.com/photo/2016/04/01/12/16/car-1300629_960_720.png",
  "https://cdn.pixabay.com/photo/2016/12/03/18/57/amg-1880381_960_720.jpg",
  "https://cdn.pixabay.com/photo/2016/04/01/12/16/car-1300629_960_720.png",
  "https://cdn.pixabay.com/photo/2016/12/03/18/57/amg-1880381_960_720.jpg",
  "https://cdn.pixabay.com/photo/2016/04/01/12/16/car-1300629_960_720.png",
  "https://cdn.pixabay.com/photo/2016/12/03/18/57/amg-1880381_960_720.jpg",
  "https://cdn.pixabay.com/photo/2016/04/01/12/16/car-1300629_960_720.png",
  "https://cdn.pixabay.com/photo/2016/12/03/18/57/amg-1880381_960_720.jpg",
  "https://cdn.pixabay.com/photo/2016/04/01/12/16/car-1300629_960_720.png",
  "https://cdn.pixabay.com/photo/2016/12/03/18/57/amg-1880381_960_720.jpg",
  "https://cdn.pixabay.com/photo/2016/04/01/12/16/car-1300629_960_720.png",
  "https://cdn.pixabay.com/photo/2016/12/03/18/57/amg-1880381_960_720.jpg",
  "https://cdn.pixabay.com/photo/2016/04/01/12/16/car-1300629_960_720.png",
  "https://cdn.pixabay.com/photo/2016/12/03/18/57/amg-1880381_960_720.jpg",
  "https://cdn.pixabay.com/photo/2016/04/01/12/16/car-1300629_960_720.png",
  "https://cdn.pixabay.com/photo/2016/12/03/18/57/amg-1880381_960_720.jpg",
  "https://cdn.pixabay.com/photo/2016/04/01/12/16/car-1300629_960_720.png",
  "https://cdn.pixabay.com/photo/2016/12/03/18/57/amg-1880381_960_720.jpg",
  "https://cdn.pixabay.com/photo/2016/04/01/12/16/car-1300629_960_720.png",
  "https://cdn.pixabay.com/photo/2016/12/03/18/57/amg-1880381_960_720.jpg",
];
var messageList = [
  "Always be yourself.",
  "Believe in the beauty of your dreams.",
  "Create your own happiness.",
  "Don't give up on your goals.",
  "Embrace every moment.",
  "Forgive and let go.",
  "Give thanks for what you have.",
  "Hope is the key to success.",
  "Imagine the possibilities.",
  "Just keep going.",
  "Kindness changes everything.",
  "Love yourself unconditionally.",
  "Make a difference.",
  "Never lose hope.",
  "Open your heart to new experiences.",
  "Push yourself to new heights.",
  "Quiet your mind and listen.",
  "Rise above the challenges.",
  "Stay positive and be kind.",
  "Take risks and chase your dreams.",
  "Unleash your inner strength.",
  "Value the little things in life.",
  "Wake up with a grateful heart.",
  "Explore new horizons.",
  "Yearn for knowledge and growth.",
  "Zero in on your passions.",
];

class WhatsApp extends StatefulWidget {
  const WhatsApp({super.key});

  @override
  State<WhatsApp> createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green[600],
            title: TabBar(
              tabs: [
                Tab(
                  child: Text("Home"),
                ),
                Tab(
                  child: Text("Status"),
                ),
                Tab(
                  child: Text("Calls"),
                ),
              ],
              splashBorderRadius: BorderRadius.circular(20),
              indicatorColor: Colors.green[600],
            ),
          ),
          body: TabBarView(children: [Chats(), Status(), Calls()]),
        ));
  }
}

Widget Chats() {
  return ListView.builder(
    itemCount: listing.length,
    itemBuilder: (context, index) {
      return ListTile(
        leading:
            CircleAvatar(backgroundImage: NetworkImage(ImagesAvatar[index])),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("12:40"),
            CircleAvatar(
              backgroundColor: Colors.amberAccent,
              foregroundColor: Colors.blue,
              radius: 5,
            ),
          ],
        ),
        title: Text(Namelisting[index]),
        tileColor: Colors.grey[350],
        subtitle: Text(messageList[index]),
        onTap: () {
          print("Tapped");
        },
      );
    },
  );
}

Widget Status() {
  return ListView.builder(
    itemCount: Namelisting.length,
    itemBuilder: (context, index) {
      return ListTile(
        tileColor: Colors.grey[350],
        leading: Stack(children: [
          CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(ImagesAvatar[index]),
          ),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.green,
                  width: 2,
                ),
              ),
            ),
          ),
        ]),
        title: Padding(
          padding: const EdgeInsets.only(top: 1),
          child: Text(Namelisting[index]),
        ),
        subtitle: Text("Today : 12:29"),
      );
    },
  );
}

Widget Calls() {
  return ListView.builder(
    itemCount: Namelisting.length,
    itemBuilder: (context, index) {
      return ListTile(
        leading: CircleAvatar(
          radius: 20,
          backgroundImage: NetworkImage(ImagesAvatar[index]),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 1),
          child: Text(Namelisting[index]),
        ),
        subtitle: Text("Today : 12:29"),
        trailing: Icon(Icons.call),
      );
    },
  );
}
