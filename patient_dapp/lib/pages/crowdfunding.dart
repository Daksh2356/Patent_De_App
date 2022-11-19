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
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
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
        title: const Text('ALL PATENTS'),
      ),
      backgroundColor: Colors.transparent,
      body: ListView.builder(
        itemCount: 7,
        itemBuilder: (BuildContext context, int index) {
          return const CFCard();
        },
      ),
    );
  }
}
