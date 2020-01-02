import 'package:flutter/material.dart';
import 'package:todo_app/models/globa.dart';
import 'package:todo_app/models/widgets/intray_todo_widget.dart';

class IntrayPage extends StatefulWidget {
  @override
  _IntrayPageState createState() => _IntrayPageState();
}

class _IntrayPageState extends State<IntrayPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: coralColor,
      child: ListView(
        padding: EdgeInsets.only(top: 300),
        children: getList(),
      ),
    );
  }

  List<Widget> getList() {
    List<IntrayTodo> _list = [];
    for (int i = 0; i < 20; i++) {
      _list.add(IntrayTodo(title:"Hello"));
    }
    return _list;
  }
}
