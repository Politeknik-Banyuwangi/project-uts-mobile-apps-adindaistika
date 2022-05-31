import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardChats extends StatelessWidget {
  final String _name;
  final String _time;
  final String _Dsc;
  final String _profilImage;

  const CardChats(this._name, this._time, this._Dsc, this._profilImage);

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
                backgroundImage: NetworkImage(_profilImage),
                radius: 30.0,
              ),
              title: Text(
                _name,
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
                  Text(_Dsc),
                ],
              ),
              trailing: Text(_time),
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
