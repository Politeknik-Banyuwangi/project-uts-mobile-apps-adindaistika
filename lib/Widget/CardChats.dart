import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

            // Kodingan dimulai
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage("https://i0.wp.com/www.cirebonkota.go.id/wp-content/uploads/2018/05/jokowi.jpg"),
                radius: 30.0,
              ),
              title: Text(
                'Anda',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Row(
                children: [
                  Icon(
                    Icons.done_all_rounded,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 3.0,
                  ),
                  Text('Tugasmu urung mari dap'),
                ],
              ),
              trailing: Text('18.00'),
            ),
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
