import 'package:flutter/material.dart';
import 'package:myschoolapp/account.dart';
import 'package:myschoolapp/attendance.dart';
import 'package:myschoolapp/home.dart';
import 'package:myschoolapp/timetable.dart';

class bnavbar extends StatefulWidget {
  const bnavbar({super.key});

  @override
  State<bnavbar> createState() => _bnavbarState();
}

class _bnavbarState extends State<bnavbar> {
  int index = 0;
  static const List<Widget> _widgetoptions = <Widget>[
    hom(),
    tt(),
    attd(),
    
    accn()
  ];

  void _onItemTapped(int i) {
    setState(() {
      index = i;
    });
  }

  final drawer = Drawer();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Container(
            child: Image.asset("assets/logo3.png"),
          ),
          title: Text(
            "My School App",
            style: TextStyle(color: Colors.black),
          ),
          leadingWidth: 75,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
            SizedBox(width: 25),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: Colors.black,
              ),
            ),
            SizedBox(width: 25),
          ],
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          toolbarHeight: 75,
        ),
        body: Center(
          child: _widgetoptions.elementAt(index),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.apps),
              label: 'timetable',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.check_box),
              label: 'attendance',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.quiz),
              label: 'result',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Profile',
            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: index,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
