import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardChats extends StatelessWidget {
  final String _name;
  final String _time;
  final String _dsc;
  final String _profilImage;

  const CardChats(this._name, this._time, this._dsc, this._profilImage);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage('${this._profilImage}'),
        radius: 30.0,
      ),
      title: Text(
        '${this._name}',
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
          Text('${this._dsc}'),
        ],
      ),
      trailing: Text('${this._time}'),
    );
  }
}
