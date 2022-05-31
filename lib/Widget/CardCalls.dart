import 'package:flutter/material.dart';

class CardsCalls extends StatelessWidget {
  // Menambahkan variabel atau atribut
  final String _name;
  final String _time;
  final String _profilImage;
  final String _calls;
  final String _actionCalls;

  const CardsCalls(this._name, this._time, this._profilImage, this._calls, this._actionCalls);

  Icon checkPanggilan(
    calls,
  ) {
    Icon icon = new Icon(
      Icons.video_call,
      color: Colors.green,
    );
    if (calls == 'call') {
      icon = Icon(
        Icons.call,
        color: Colors.green,
      );
    } else {
      icon = Icon(
        Icons.video_call,
        color: Colors.green,
      );
    }
    ;
    return icon;
  }

  Color checkAksiPanggilan(actionCalls) {
    Color color = Colors.red;
    if (actionCalls == 'accept') {
      color = Colors.green;
    } else {
      color = Colors.red;
    }
    return color;
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage("${this._profilImage}"),
        radius: 30.0,
      ),
      title: Padding(
        padding: EdgeInsets.only(bottom: 4.0),
        child: Text(
          '${this._name}',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
      ),
      subtitle: Row(
        children: [
          Icon(
            Icons.south_west,
            color: checkAksiPanggilan(this._actionCalls),
            size: 16.0,
          ),
          SizedBox(
            width: 3.0,
          ),
          Text(
            '${this._time}',
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
        ],
      ),
      trailing: checkPanggilan(this._calls),
    );
  }
}
