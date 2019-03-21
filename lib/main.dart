// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// You can read about packages here: https://flutter.io/using-packages/
import 'package:flutter/material.dart';
import 'package:flutter_meetup/category_route.dart';

/// The function that is called when main.dart is run.
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: CategoryRoute(),
  ));
}

class MyApp extends StatelessWidget {
  Widget getBox(Color color) {
    return Container(
      height: 200,
      width: 300,
      color: color,
    );
  }

  Widget getListTile(String title, IconData icon) {
    return ListTile(
      title: Text(title),
      leading: Icon(icon),
      onTap: () {
        print("list tile pressed");
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwpMa-LnTiy607Vq4zIcch4HU8JwnF6VCyyZWojL53UK9LobIzTA",
                ),
              ),
              accountEmail: Text("a@a.com"),
              accountName: Text("Xuzan"),
            ),
            getListTile("Home", Icons.home),
            getListTile("Settings", Icons.settings),
            getListTile("About us", Icons.account_box),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
          "Test",
          style: TextStyle(color: Colors.white),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("test");
        },
        child: Icon(Icons.add),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text("This is list tile"),
              subtitle: Text("This is subtitle"),
              leading: Icon(Icons.add),
              onTap: () {
                print("list tile pressed");
              },
            ),
            getBox(Colors.red),
            getBox(Colors.blue),
            getBox(Colors.green),
            getBox(Colors.black),
          ],
        ),
      ),
    );
  }
}
