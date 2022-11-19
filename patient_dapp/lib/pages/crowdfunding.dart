import 'package:flutter/material.dart';
import 'package:patient_dapp/pages/Ppage.dart';
import '../widgets/crowdfunding_card.dart';

class Crowdfunding extends StatefulWidget {
  const Crowdfunding({super.key});

  @override
  State<Crowdfunding> createState() => _CrowdfundingState();
}

class _CrowdfundingState extends State<Crowdfunding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: <Widget>[
          IconButton(
              onPressed: () {
                
                Navigator.push(context, new MaterialPageRoute(
   builder: (context) => new Ppage())
 );
              },
              icon: Icon(Icons.person))
        ],
      ),
      body: ListView.builder(
        itemCount: 7,
        itemBuilder: (BuildContext context, int index) {
          return const CFCard();
        },
      ),
    );
  }
}
