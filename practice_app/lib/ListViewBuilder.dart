import 'package:flutter/material.dart';
import 'package:practice_app/WhatsApp.dart';
import 'package:practice_app/main.dart';

class ListViewBuilder extends StatefulWidget {
  const ListViewBuilder({super.key});

  @override
  State<ListViewBuilder> createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<ListViewBuilder> {
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
  var ImagesAvatar = [
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
  // DateTime now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    Color tileColor = Colors.black12;
    DateTime now = DateTime.now();
    String formattedTime =
        "${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}";
    return Scaffold(
        appBar: AppBar(
          title: Text("WhatsApp"),
        ),
        drawer: Drawer(
          child: ListView(children: [
            ListTile(
              leading: Text("Home"),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyApp()));
              },
            )
          ]),
        ),
        body: ListView.builder(
          itemCount: listing.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(ImagesAvatar[index])),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.amberAccent,
                    foregroundColor: Colors.blue,
                    radius: 5,
                  ),
                  Text(formattedTime)
                ],
              ),
              title: Text(Namelisting[index]),
              tileColor: tileColor,
              subtitle: Text(messageList[index]),
              onTap: () {
                print("Tapped");
              },
            );
          },
        ));
  }
}
