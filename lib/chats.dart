import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Widget/CardChats.dart';

class Chats extends StatelessWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (_) {
          _.disallowGlow();
          return true;
        },
        child: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            CardChats('Ridho', '19.00', 'Semangat buat hari ini', 'https://i.postimg.cc/J7v7zHrW/IMG-8252.jpg'),
            CardChats('Ridho', '19.00', 'Semangat buat hari ini', 'https://i.postimg.cc/J7v7zHrW/IMG-8252.jpg'),
            CardChats('Ridho', '19.00', 'Semangat buat hari ini', 'https://i.postimg.cc/J7v7zHrW/IMG-8252.jpg'),
            CardChats('Ridho', '19.00', 'Semangat buat hari ini', 'https://i.postimg.cc/J7v7zHrW/IMG-8252.jpg'),
            CardChats('Ridho', '19.00', 'Semangat buat hari ini', 'https://i.postimg.cc/J7v7zHrW/IMG-8252.jpg'),
            CardChats('Ridho', '19.00', 'Semangat buat hari ini', 'https://i.postimg.cc/J7v7zHrW/IMG-8252.jpg'),
            CardChats('Ridho', '19.00', 'Semangat buat hari ini', 'https://i.postimg.cc/J7v7zHrW/IMG-8252.jpg'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
        child: Icon(
          Icons.chat_bubble,
          color: Colors.white,
        ),
      ),
    );
  }
}
