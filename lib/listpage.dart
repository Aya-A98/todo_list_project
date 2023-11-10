import 'package:dolist/model/loginmodel.dart';
import 'package:dolist/profile.dart';
import 'package:dolist/viewmodel/viewmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'addtask.dart';
import 'detailstasks.dart';

class scr1 extends StatefulWidget {
  scr1({super.key});

  @override
  State<scr1> createState() => _scr1State();
}

class _scr1State extends State<scr1> {
  final inputcaption = TextEditingController();
  final input = TextEditingController();
  final username = TextEditingController();
  Login login = Login("Aya ", "password");
  final TextEditingController newtask = TextEditingController();
  String thetask = " ";
  // final input =Task[index].title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        leading: IconButton(
          icon: Icon(
            Icons.details,
          ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const details()));
          },
        ),
        title: Consumer<viewmodel>(
          builder: (context, viewmodel, child) {
            return Column(
              children: [
                Text("Welcome , ${viewmodel.getusername(username.text)} ",
                    style: TextStyle(fontStyle: FontStyle.italic)),
                Text(
                  viewmodel.getcaption(inputcaption.text),
                  style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
                )
              ],
            );
          },
        ),
        actions: [
          //     CircleAvatar(
          //   backgroundColor: Colors.white, foregroundColor: Colors.deepPurple,
          //   child: Text(login.username[0],style: TextStyle(fontWeight: FontWeight.bold),),
          // )
          IconButton(
            icon: Icon(
              Icons.account_circle,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const prof()));
            },
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          color: Colors.deepPurple,
          child: Column(
            children: [
              Expanded(
                child:
                    Consumer<viewmodel>(builder: (context, viewmodel, child) {
                  return Container(
                    //decoration: BoxDecoration(
                    //borderRadius:
                    // BorderRadius.vertical(top: Radius.circular(80))),
                    child: ListView.separated(
                        padding: EdgeInsets.all(8),
                        itemBuilder: (context, index) {
                          return Dismissible(
                            key: UniqueKey(),
                            onDismissed: (direction) {
                              viewmodel.deletetask(index);
                            },
                            background: Container(
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Center(
                                child: Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white54,
                                  borderRadius: BorderRadius.circular(15)),
                              child: ListTile(
                                leading: Checkbox(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(3)),
                                  side: BorderSide(width: 2),
                                  checkColor: Colors.cyan,
                                  activeColor: Colors.yellow,
                                  value: viewmodel.getvalue(index),
                                  onChanged: (value) {
                                    viewmodel.settaskvalue(index, value!);
                                  },
                                ),
                                title: Text(
                                  viewmodel.gettitle(index),
                                  //viewmodel.getupdatetask(index,newtask.text);
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                trailing: SizedBox(
                                  width: 100,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      IconButton(
                                          onPressed: () {
                                            showDialog(
                                              context: context,
                                              builder: (context) =>
                                                  SimpleDialog(
                                                children: [
                                                  Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              5),
                                                      child: TextField(
                                                        onSubmitted: (value) {
                                                          if (input
                                                              .text.isEmpty) {
                                                            viewmodel
                                                                .updatetitle(
                                                                    index,
                                                                    newtask
                                                                        .text);
                                                            Navigator.of(
                                                                    context)
                                                                .pop();
                                                            newtask.clear();
                                                          }
                                                        },
                                                        controller: newtask,
                                                        autofocus: true,
                                                      ))
                                                ],
                                              ),
                                            );
                                          },
                                          icon: Icon(Icons.edit)),
                                      IconButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      AlertDialog(
                                                    title: Text(
                                                      "Do you Want to Delete This Task?",
                                                      style: TextStyle(
                                                          color: Colors
                                                              .deepPurple),
                                                    ),
                                                    actions: [
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: [
                                                          TextButton(
                                                              onPressed: () {
                                                                viewmodel
                                                                    .deletetask(
                                                                        index);
                                                                Navigator.of(
                                                                        context)
                                                                    .pop();
                                                              },
                                                              child: Card(
                                                                  color: Colors
                                                                      .deepPurple,
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        const EdgeInsets
                                                                            .all(
                                                                            10),
                                                                    child: Text(
                                                                      "Delete",
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .white,
                                                                          fontWeight: FontWeight
                                                                              .bold,
                                                                          fontSize:
                                                                              16),
                                                                    ),
                                                                  ))),
                                                          TextButton(
                                                              onPressed: () {
                                                                Navigator.of(
                                                                        context)
                                                                    .pop();
                                                              },
                                                              child: Card(
                                                                  color: Colors
                                                                      .deepPurple,
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        const EdgeInsets
                                                                            .all(
                                                                            10),
                                                                    child: Text(
                                                                      "Cancel",
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .white,
                                                                          fontWeight: FontWeight
                                                                              .bold,
                                                                          fontSize:
                                                                              16),
                                                                    ),
                                                                  )))
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                ));
                                          },
                                          icon: Icon(Icons.delete))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(height: 10);
                        },
                        itemCount: viewmodel.getlengthoftask()),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: adding(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
