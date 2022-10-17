import 'package:flutter/material.dart';
import 'package:my_kanban/constants/colors.dart';
import 'package:my_kanban/widgets/todo_item.dart';

import '../model/todo.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

final todoLists = ToDo.todoList();

final tmp = ToDo.todoList().length;
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(''),
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('My tasks', style: TextStyle(color: primaryT, fontWeight: FontWeight.bold, fontSize: 28),),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      color: primaryT,
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                    ),
                    child: const Icon(Icons.add, color: Colors.white,),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
                width: double.infinity,
                child: Text('$tmp tasks', style: const TextStyle(color: primaryT, fontWeight: FontWeight.w500, fontSize: 16),),
              ),
              searchBox(),
              Expanded(
                  child: ListView(
                    children: [
                      for (ToDo todo in todoLists)
                        TodoItem(todo: todo, onTodoDone: _setIsDone,)
                    ],
                  ))
            ],
          )
      ),
    );
  }
  void _setIsDone(ToDo todo) {
    setState(() {
      todo.isDone = !todo.isDone;
    });
  }

  Widget searchBox() {
    return Container(
      // search bar
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(18),
      ),
      child: const TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(Icons.search, color: primaryT,),
          prefixIconConstraints: BoxConstraints(
            minWidth: 40,
            minHeight: 40,
          ),
          hintText: 'Search',
          hintStyle: TextStyle(color: primaryT, fontWeight: FontWeight.w500, fontSize: 16),
        ),
      ),
    );
  }
}

