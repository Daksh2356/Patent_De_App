import 'package:flutter/material.dart';
import 'crowd_funding.dart';
import 'package:line_icons/line_icons.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav>
    with SingleTickerProviderStateMixin {
  var selectedItem = 0;

  List children = [
    const Crowdfunding(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 30, 30, 30),
        body: children[selectedItem],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color.fromARGB(255, 27, 26, 26),
          //selectedItemColor: Color.fromARGB(255, 99, 246, 204),
          iconSize: 25,
          currentIndex: selectedItem,
          unselectedLabelStyle: const TextStyle(color: Colors.green),
          unselectedItemColor: Colors.white,
          onTap: (currIndex) {
            setState(() {
              selectedItem = currIndex;
            });
          },
          items: const [
            BottomNavigationBarItem(
              backgroundColor: Color.fromARGB(255, 27, 26, 26),
              icon: Icon(LineIcons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              backgroundColor: Color.fromARGB(255, 27, 26, 26),
              icon: Icon(Icons.file_copy_outlined),
              label: 'File Patent',
            ),
            BottomNavigationBarItem(
              backgroundColor: Color.fromARGB(255, 27, 26, 26),
              icon: Icon(Icons.assignment_outlined),
              label: 'Your Patent',
            ),
          ],
        ),
      ),
    );
  }
}
