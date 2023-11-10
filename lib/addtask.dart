import 'package:dolist/viewmodel/viewmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'model/taskmodel.dart';

class adding extends StatefulWidget {
  adding({super.key});

  @override
  State<adding> createState() => _addingState();
}

class _addingState extends State<adding> {
  final input = TextEditingController();
  List<task> Task = List.empty(growable: true);
  @override
  Widget build(BuildContext context) {
    return Consumer<viewmodel>(builder: (context, viewmodel, child) {
      return FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => AlertDialog(
                        title: Text(
                          "The Task is ",
                          style: TextStyle(color: Colors.deepPurple),
                        ),
                        actions: [
                          TextField(
                            controller: input,
                            decoration: InputDecoration(
                              label: Text(
                                "what're you want to do ",
                                style: TextStyle(color: Colors.deepPurple),
                              ),
                            ),
                            autofocus: true,
                          ),
                          TextButton(
                              child: Card(
                                  color: Colors.deepPurple,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 13, top: 7, right: 13, bottom: 7),
                                    child: Text(
                                      "Ok",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                  )),
                              onPressed: () {
                                task t2 = task(input.text, false);
                                viewmodel.setaddtask(t2);
                                input.clear();
                                Navigator.of(context).pop();
                              }),
                        ],
                      )));
        },
        child: Icon(
          Icons.add,
          color: Colors.deepPurple,
        ),
        backgroundColor: Colors.white,
      );
    });
  }
}
