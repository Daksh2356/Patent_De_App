import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:contactus/contactus.dart';

class Ppage extends StatefulWidget {
  const Ppage({super.key});

  static const routname = "/profile";

  @override
  State<Ppage> createState() => _PpageState();
}

class _PpageState extends State<Ppage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Profile'),
        backgroundColor: Colors.transparent,
        leading: BackButton(),
      ),
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: ListView(
              children: [
                InkWell(
                  onTap: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.deepOrange),
                    margin: EdgeInsets.all(8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.logout_outlined,
                          size: 50,
                          color: Colors.white,
                        ),
                        Text(
                          "Logout",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontFamily: 'Avenir'),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.lightGreen),
                    margin: EdgeInsets.all(8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.money,
                          size: 50,
                          color: Colors.white,
                        ),
                        Text(
                          "Wallet Balance",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontFamily: 'Avenir'),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.deepPurpleAccent),
                    margin: EdgeInsets.all(8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.post_add_outlined,
                          size: 50,
                          color: Colors.white,
                        ),
                        Text(
                          "Wallet Address",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontFamily: 'Avenir'),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    //Navigator.push(context, MaterialPageRoute(builder: (context)=>));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.pinkAccent),
                    margin: EdgeInsets.all(8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.history,
                          size: 50,
                          color: Colors.white,
                        ),
                        Text(
                          "Transaction History",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontFamily: 'Avenir'),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: ContactUsBottomAppBar(
        companyName: 'Dash Star',
        textColor: Colors.white,
        backgroundColor: Colors.black45,
        email: 'user@gmail.com',
      ),
    );
  }
}
//image: DecorationImage(image: AssetImage('assets/add.png'))