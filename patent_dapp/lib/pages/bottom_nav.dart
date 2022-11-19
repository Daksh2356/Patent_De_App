import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import './crowdfunding.dart';
import '../widgets/patent_card.dart';

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
    PatentCard(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(179, 0, 0, 0),
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 18, 18, 18),
        body: Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: children[selectedItem],
        ),
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
