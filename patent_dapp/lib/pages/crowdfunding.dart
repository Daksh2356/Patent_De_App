import 'package:flutter/material.dart';

import '../widgets/crowdfunding_card.dart';
import '../pages/profile_page.dart';

class Crowdfunding extends StatefulWidget {
  const Crowdfunding({super.key});

  @override
  State<Crowdfunding> createState() => _CrowdfundingState();
}

class _CrowdfundingState extends State<Crowdfunding> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(179, 0, 0, 0),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(179, 0, 0, 0),
          elevation: 0,
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
              ),
            ),
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => const Ppage())));
                },
                icon: const Icon(Icons.person))
          ],
          centerTitle: true,
          title: const Text('ALL PATENTS'),
        ),
        backgroundColor: Colors.transparent,
        body: Container(
          decoration: BoxDecoration(
              color: Colors.white30,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: ListView.builder(
            itemCount: 7,
            itemBuilder: (BuildContext context, int index) {
              return const CFCard();
            },
          ),
        ),
      ),
    );
  }
}
