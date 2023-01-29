import 'dart:js_util';

import 'package:flutter/material.dart';

class accn extends StatefulWidget {
  const accn({super.key});

  @override
  State<accn> createState() => _accnState();
}

class _accnState extends State<accn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.all(8),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/profilepics.png"),
                    radius: 50.0,
                  ),
                ),
                Divider(),
                ListTile(
                  leading: Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                  title: Text("Name : "),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.chat_bubble, color: Colors.black),
                  title: Text("Standard : "),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.book, color: Colors.black),
                  title: Text("Roll No : "),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.call, color: Colors.black),
                  title: Text("Contact No : "),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.logout, color: Colors.black),
                  title: Text("Logout"),
                  onTap: () async {
                    Navigator.pushReplacementNamed(context, '/');
                  },
                  trailing: Icon(Icons.arrow_forward_ios, color: Colors.black),
                ),
                Divider(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
