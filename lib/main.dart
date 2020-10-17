import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.orange, accentColor: Colors.black),
    home: new Scaffold(
        appBar: AppBar(
          title: Text(
            "Flutter Examples",
            style: TextStyle(fontSize: 20.0, color: Colors.white),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint("Clicked to Button.");
          },
          child: Icon(
            Icons.settings,
          ),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 50),
          child: Column(children: <Widget>[
            Text(
              "Butons ",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                RaisedButton(
                  child: Text("Erry Carlmicheal"),
                  color: Colors.purple,
                  onPressed: () =>
                      debugPrint("You've clicked to purple button!"),
                ),
                RaisedButton(
                  child: Text("Dennis Ritchie"),
                  elevation: 12,
                  textColor: Colors.yellow,
                  color: Colors.blue,
                  onPressed: () {
                    debugPrint("You've clicked to blue bottom!");
                    debugPrint("What a coder!");
                  },
                ),
                RaisedButton(
                  child: Text("Barack Obama!"),
                  elevation: 12,
                  textColor: Colors.black,
                  color: Colors.green,
                  onPressed: longMethod,
                ),
                IconButton(
                  icon: Icon(Icons.pets, size: 32),
                  onPressed: () {
                    debugPrint("Flying Cows!");
                  },
                ),
                FlatButton(
                  onPressed: () {
                    debugPrint("Could you drink a cup of coffe with me ?");
                  },
                  child: Text(
                    "Flat Button",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ],
            ),
          ]),
        )),
  ));
}

void longMethod() {
  debugPrint("I came from out of the World");
}
