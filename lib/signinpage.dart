import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'loginpage.dart';

class signin extends StatefulWidget {
  const signin({super.key});

  @override
  State<signin> createState() => _loginState();
}

class _loginState extends State<signin> {
  final username = TextEditingController();
  final password = TextEditingController();
  bool isvisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SingleChildScrollView(
      child: Container(
        color: Colors.deepPurple,
        child: Padding(
          padding: const EdgeInsets.only(left:10,top:140,right:10,bottom: 280),
          child: Card( color: Colors.white70,
            child: Column(children: [
              SizedBox(height: 20,),
              Image.asset("images/to-do-list.jpg" , width: 130, height: 130,),
              SizedBox(height: 20,),
              Text("SignIn" , style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 36, fontStyle: FontStyle.italic),),
              SizedBox(height: 60,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: TextField(
                  controller: username,
                  decoration: InputDecoration(label:Text("username" , style:TextStyle(color: Colors.deepPurple),),filled:true,
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.deepPurple , width: 2)) ,
                      icon: Icon(Icons.person)),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: TextField(
                  controller: password,
                  decoration: InputDecoration(label:Text("password",style: TextStyle(color: Colors.deepPurple),),filled: true,
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.deepPurple , width: 2),),
                      suffixIcon: IconButton(icon:Icon(isvisible? Icons.visibility:Icons.visibility_off),color: Colors.deepPurple,onPressed:(){
                        setState(() {
                          isvisible = !isvisible;
                        });
                      }),
                      icon: Icon(Icons.lock)),
                  obscureText: isvisible,),
              ),
              SizedBox(height: 10,),
              Row(mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(onPressed: (){password.clear(); username.clear();
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>login()));},
                      child: Card(color: Colors.deepPurple,
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text("Cancel",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                          ))),
                  TextButton(onPressed: () {
                    Navigator.push(context , MaterialPageRoute(builder: (context)=> const login()));
                  },
                      child: Card(color: Colors.deepPurple,
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text("SignIn",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                          ))),
                ],),
              SizedBox(height: 30,),
            ],),
          ),
        ),
      ),
    ),);
  }
}
