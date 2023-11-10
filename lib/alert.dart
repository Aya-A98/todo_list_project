import 'package:dolist/viewmodel/viewmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class alertcaption extends StatefulWidget {
  const alertcaption({super.key});
  @override
  State<alertcaption> createState() => _alertcaptionState();
}

class _alertcaptionState extends State<alertcaption> {
  final inputcaption = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Consumer<viewmodel>(
      builder: (context, viewmodel, child) {
        return AlertDialog(
          actions: [
            TextField(
              controller: inputcaption,
              decoration: InputDecoration(
                label: Text(
                  "type here ",
                  style: TextStyle(
                      color: Colors.deepPurple, fontWeight: FontWeight.bold),
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
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  )),
              onPressed: () {
                viewmodel.setcaption(inputcaption.text);
                Navigator.of(context).pop();
              },
            )
          ],
        );
      },
    );
  }
}

class alertbd extends StatefulWidget {
  const alertbd({super.key});
  @override
  State<alertbd> createState() => _alertbdState();
}

class _alertbdState extends State<alertbd> {
  final inputbd = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Consumer<viewmodel>(
      builder: (context, viewmodel, child) {
        return AlertDialog(
          actions: [
            TextField(
              controller: inputbd,
              decoration: InputDecoration(
                label: Text(
                  "type here ",
                  style: TextStyle(
                      color: Colors.deepPurple, fontWeight: FontWeight.bold),
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
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  )),
              onPressed: () {
                viewmodel.setbirthday(inputbd.text);
                Navigator.of(context).pop();
              },
            )
          ],
        );
      },
    );
  }
}

class alertphone extends StatefulWidget {
  const alertphone({super.key});
  @override
  State<alertphone> createState() => _alertphoneState();
}

class _alertphoneState extends State<alertphone> {
  final inputphone = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Consumer<viewmodel>(
      builder: (context, viewmodel, child) {
        return AlertDialog(
          actions: [
            TextField(
              controller: inputphone,
              decoration: InputDecoration(
                label: Text(
                  "type here ",
                  style: TextStyle(
                      color: Colors.deepPurple, fontWeight: FontWeight.bold),
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
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  )),
              onPressed: () {
                viewmodel.setphone(inputphone.text);
                Navigator.of(context).pop();
              },
            )
          ],
        );
      },
    );
  }
}

class alertcity extends StatefulWidget {
  const alertcity({super.key});
  @override
  State<alertcity> createState() => _alertcityState();
}

class _alertcityState extends State<alertcity> {
  final inputcity = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Consumer<viewmodel>(
      builder: (context, viewmodel, child) {
        return AlertDialog(
          actions: [
            TextField(
              controller: inputcity,
              decoration: InputDecoration(
                label: Text(
                  "type here ",
                  style: TextStyle(
                      color: Colors.deepPurple, fontWeight: FontWeight.bold),
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
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  )),
              onPressed: () {
                viewmodel.setcity(inputcity.text);
                Navigator.of(context).pop();
              },
            )
          ],
        );
      },
    );
  }
}

class alerthobby extends StatefulWidget {
  const alerthobby({super.key});
  @override
  State<alerthobby> createState() => _alerthobbyState();
}

class _alerthobbyState extends State<alerthobby> {
  final inputhobby = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Consumer<viewmodel>(
      builder: (context, viewmodel, child) {
        return AlertDialog(
          actions: [
            TextField(
              controller: inputhobby,
              decoration: InputDecoration(
                label: Text(
                  "type here ",
                  style: TextStyle(
                      color: Colors.deepPurple, fontWeight: FontWeight.bold),
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
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  )),
              onPressed: () {
                viewmodel.sethobby(inputhobby.text);
                Navigator.of(context).pop();
              },
            )
          ],
        );
      },
    );
  }
}

class alertaboutme extends StatefulWidget {
  const alertaboutme({super.key});
  @override
  State<alertaboutme> createState() => _alertaboutmeState();
}

class _alertaboutmeState extends State<alertaboutme> {
  final inputaboutme = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Consumer<viewmodel>(
      builder: (context, viewmodel, child) {
        return AlertDialog(
          actions: [
            TextField(
              controller: inputaboutme,
              decoration: InputDecoration(
                label: Text(
                  "type here ",
                  style: TextStyle(
                      color: Colors.deepPurple, fontWeight: FontWeight.bold),
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
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  )),
              onPressed: () {
                viewmodel.setaboutme(inputaboutme.text);
                Navigator.of(context).pop();
              },
            )
          ],
        );
      },
    );
  }
}
