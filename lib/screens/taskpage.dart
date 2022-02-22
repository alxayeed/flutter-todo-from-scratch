import 'package:flutter/material.dart';
import 'package:untitled/database_helper.dart';
import 'package:untitled/widgets.dart';

import '../models/task.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({Key? key}) : super(key: key);

  @override
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(24.0),
                          child: Image(
                              image: AssetImage(
                                  "assets/images/back_arrow_icon.png")),
                        )),
                    Expanded(
                      child: TextField(
                        onSubmitted: (String value) async{
                          if(value.isNotEmpty){
                            DatabaseHelper _dbHelper = DatabaseHelper();
                            Task _newTask = Task(
                              title: value,
                            );
                            await _dbHelper.insertTask(_newTask);
                            print('New task has been created');
                          }
                          },
                        decoration: const InputDecoration(
                          hintText: "Add a task",
                          border: InputBorder.none,
                        ),

                        style: const TextStyle(
                            fontSize: 26.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF211551)),
                      ),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 10.0),
                child: TextField(

                  decoration: InputDecoration(
                      hintText: "Add a description for your task",
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 24.0)),
                ),
              ),
              const TaskWidget(title: "Task 1", isDone: true),
              const TaskWidget(title: "Task 2", isDone: false),
              const TaskWidget(title: "Task 3", isDone: true),
              const TaskWidget(isDone: false),
            ],
          ),
          Positioned(
              right: 10.0,
              bottom: 20.0,
              child: GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  height: 60.0,
                  width: 60.0,
                  decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(20.0)),
                  child: const Image(
                      image: AssetImage("assets/images/delete_icon.png")),
                ),
              ))
        ]),
      ),
    );
  }
}
