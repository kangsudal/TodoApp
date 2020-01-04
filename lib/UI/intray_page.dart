import 'package:flutter/material.dart';
import 'package:todo_app/models/classes/task.dart';
import 'package:todo_app/models/globa.dart';
import 'package:todo_app/models/widgets/intray_todo_widget.dart';

class IntrayPage extends StatefulWidget {
  @override
  _IntrayPageState createState() => _IntrayPageState();
}

class _IntrayPageState extends State<IntrayPage> {
  List<Task> taskList = [];
  @override
  Widget build(BuildContext context) {
    taskList = getList();
    return Container(
      color: coralColor,
      child: _buildReorderableList(context),
    );
  }

  _buildReorderableList(BuildContext context) {
    return Theme(
      data: ThemeData(canvasColor: Colors.transparent),
      child: ReorderableListView(
        //드레그 가능한 리스트뷰
        padding: EdgeInsets.only(top: 300),
        children:
            taskList.map((Task item) => _buildListTile(context, item)).toList(),
        //taskList: 데이터들, _buildListTile 데이터 담는 포장용기
        onReorder: _onReorder,
      ),
    );
  }

  void _onReorder(int oldIndex, int newIndex) {
    setState(() {
      // if (newIndex > oldIndex) {
      //   newIndex -= 1;
      // }
      Task item = taskList[oldIndex];
      taskList.remove(item);
      taskList.insert(newIndex, item);
    });
  }

  List<Task> getList() {
    for (int i = 0; i < 10; i++) {
      taskList.add(Task("My first todo " + i.toString(), false, i.toString()));
    }
    return taskList;
  }

  Widget _buildListTile(BuildContext context, Task item) {
    return ListTile(
      key: Key(item.taskId),
      title: IntrayTodo(
        title: item.title,
      ),
    );
  }
}
