import 'package:dolist/viewmodel/viewmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'alert.dart';
import 'loginpage.dart';

class prof extends StatefulWidget {
  const prof({super.key});

  @override
  State<prof> createState() => _profState();
}

class _profState extends State<prof> {
  final inputcaption =TextEditingController();
  final inputbd =TextEditingController();
  final inputphone =TextEditingController();
  final inputcity =TextEditingController();
  final inputhobby =TextEditingController();
  final inputaboutme =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.deepPurpleAccent,
        title: Text("Your Info",
          style: TextStyle(fontWeight: FontWeight.bold , fontStyle: FontStyle.italic),),),
        body: Container(
            color: Colors.deepPurple,
            child: Consumer<viewmodel>(builder: (context,viewmodel,child){
              return Column(
                  children: [
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Container(
                            height: 90.0,
                            width: 80.0,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: new AssetImage("images/robot-1470108_1280.jpg"),
                                    fit: BoxFit.cover
                                )
                            ),
                          ),
                        ),
                        SizedBox(width: 20,),
                        Column(
                          children: [
                            SizedBox(height: 20,),
                            Text("Aya Saeed" ,style: TextStyle(
                                color: Colors.white ,
                                fontSize: 26 ,
                                fontWeight: FontWeight.bold ,
                                fontStyle: FontStyle.italic),),
                            SizedBox(height: 20,),
                            Text(viewmodel.getcaption(inputcaption.text) ,style: TextStyle(
                                color: Colors.white ,
                                fontSize: 16 ,
                                fontStyle: FontStyle.italic),),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 30,),
                    SingleChildScrollView(
                      child: Column(children: [
                        Card(color: Colors.white54,
                          child: Row(
                              children: [
                                Expanded(flex:9,
                                  child: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Caption",style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18,),),
                                        SizedBox(height: 5,),
                                        Text("${viewmodel.getcaption(inputcaption.text)}" , style: TextStyle( fontSize: 16)),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(flex: 1,
                                    child: IconButton(icon: Icon(Icons.edit),onPressed: (){
                                      Navigator.push(context,MaterialPageRoute(builder: (context)=>alertcaption()));
                                    },)),
                              ]),),
                        SizedBox(height: 3,),
                        Card(color: Colors.white54,
                          child: Row(mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(flex:9,
                                child: Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("BirthDay",style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18),),
                                      SizedBox(height: 5,),
                                      Text("${viewmodel.getbirthday(inputbd.text)}", style: TextStyle( fontSize: 16)),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(flex: 1,
                                  child: IconButton(icon: Icon(Icons.edit),onPressed: (){
                                    Navigator.push(context,MaterialPageRoute(builder: (context)=>alertbd()));
                                  },)),
                            ],
                          ),
                        ),
                        SizedBox(height: 3,),
                        Card(color: Colors.white54,
                          child: Row(mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(flex:9,
                                child: Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Phone",style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18),),
                                      SizedBox(height: 5,),
                                      Text("${viewmodel.getphone(inputphone.text)}" , style: TextStyle( fontSize: 16)),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(flex: 1,
                                  child: IconButton(icon: Icon(Icons.edit),onPressed: (){
                                    Navigator.push(context,MaterialPageRoute(builder: (context)=>alertphone()));
                                  },)),
                            ],
                          ),),
                        SizedBox(height: 3,),
                        Card(color: Colors.white54,
                          child: Row(mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(flex:9,
                                child: Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("City",style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18),),
                                      SizedBox(height: 5,),
                                      Text("${viewmodel.getcity(inputcity.text)}" , style: TextStyle( fontSize: 16)),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(flex: 1,
                                  child: IconButton(icon: Icon(Icons.edit),onPressed: (){
                                    Navigator.push(context,MaterialPageRoute(builder: (context)=>alertcity()));
                                  },)),
                            ],
                          ),),
                        SizedBox(height: 3,),
                        Card(color: Colors.white54,
                          child: Row(mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(flex:9,
                                child: Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Hobby",style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18),),
                                      SizedBox(height: 5,),
                                      Text("${viewmodel.gethobby(inputhobby.text)}" , style: TextStyle( fontSize: 16)),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(flex: 1,
                                  child: IconButton(icon: Icon(Icons.edit),onPressed: (){
                                    Navigator.push(context,MaterialPageRoute(builder: (context)=>alerthobby()));
                                  },)),
                            ],
                          ),),
                        SizedBox(height: 3,),
                        Card(color: Colors.white54,
                          child: Row(mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(flex:9,
                                child: Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("About Me",style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18),),
                                      SizedBox(height: 5,),
                                      Text("${viewmodel.getaboutme(inputaboutme.text)}" , style: TextStyle( fontSize: 16)),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(flex: 1,
                                  child: IconButton(icon: Icon(Icons.edit),onPressed: (){
                                    Navigator.push(context,MaterialPageRoute(builder: (context)=>alertaboutme()));
                                  },)),
                            ],
                          ),),
                        SizedBox(height: 3,),
                        Card(color: Colors.white54,
                          child: Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(child: Text("LOGOUT",style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20,color: Colors.yellow),),
                                onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));},),
                            ],
                          ),),
                      ],),
                    )
                  ]);
            },

            )
        ));
  }
}
