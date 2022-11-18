import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import './crowdfunding.dart';
import './patent_card.dart';

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
    const Crowdfunding(),
    const PatentCard(),
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
