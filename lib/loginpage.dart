import 'package:dolist/signinpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'listpage.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final username = TextEditingController();
  final password = TextEditingController();
  bool isvisible = true;
  //final db = DataBase;
  bool islogintrue = false ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SingleChildScrollView(
      child: Container(
        color: Colors.deepPurple,
        child: Padding(
          padding: const EdgeInsets.only(
              left: 10, top: 140, right: 10, bottom: 280),
          child: Card(
            color: Colors.white70,
            child: Form(
              child: Column(children: [
                SizedBox(height: 20,),
                Image.asset("images/to-do-list.jpg", width: 130, height: 130,),
                SizedBox(height: 20,),
                Text("LogIn", style: TextStyle(fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 36,
                    fontStyle: FontStyle.italic),),
                SizedBox(height: 60,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: TextField(
                    controller: username,
                    decoration: InputDecoration(label: Text(
                      "username", style: TextStyle(color: Colors.deepPurple),),
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                color: Colors.deepPurple, width: 2)),
                        icon: Icon(Icons.person),
                        iconColor: Colors.deepPurple),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: TextField(
                    controller: password,
                    decoration: InputDecoration(label: Text(
                      "password", style: TextStyle(color: Colors.deepPurple),),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                              color: Colors.deepPurple, width: 2)),
                      suffixIcon: IconButton(icon: Icon(
                          isvisible ? Icons.visibility : Icons.visibility_off),
                          color: Colors.deepPurple,
                          onPressed: () {
                            setState(() {
                              isvisible = !isvisible;
                            });
                          }),
                      icon: Icon(Icons.lock),
                      iconColor: Colors.deepPurple,),
                    obscureText: isvisible,),
                ),
                SizedBox(height: 10,),
                Row(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => signin()));
                    }, child: Card(
                      color: Colors.deepPurple,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text("SignIn",
                          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                      ),
                    )),
                    TextButton(onPressed: () {
                      // login();
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => scr1()));
                    }, child: Card(color: Colors.deepPurple,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text("LogIn",
                          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                      ),
                    )),
                  ],),
                SizedBox(height: 30,),

                islogintrue? const Text("Username or Password is Incorrect " ,
                  style: TextStyle(color: Colors.red),):const SizedBox(),
              ],),
            ),
          ),
        ),
      ),
    ),);
  }
}