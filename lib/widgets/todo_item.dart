import 'package:flutter/material.dart';
import 'package:my_kanban/constants/colors.dart';
import 'package:my_kanban/model/todo.dart';

class TodoItem extends StatefulWidget {
  final ToDo todo;
  dynamic onTodoDone;
  TodoItem({Key? key, required this.todo, required this.onTodoDone}) : super(key: key);

  @override
  State<TodoItem> createState() => _TodoItemState();
}

class _TodoItemState extends State<TodoItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          ListTile(
            onTap: () {
              widget.onTodoDone(widget.todo);
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            leading: Icon(
              widget.todo.isDone ? Icons.check_circle : Icons.circle_outlined,
              size: 30,
              color: primaryT,
            ),
            title: Text(
              widget.todo.title!,
              style: TextStyle(color: primaryT, fontWeight: FontWeight.w500,
                  decoration: widget.todo.isDone ? TextDecoration.lineThrough : null),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 50),
            child: const Divider(
              color: Colors.grey,
              thickness: 0.5,
            ),
          )
        ],
      ),

    );
  }
}
