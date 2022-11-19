import 'package:flutter/material.dart';
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
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('Your Profile'),
        backgroundColor: const Color.fromARGB(255, 15, 32, 39),
        leading: const BackButton(),
      ),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 15, 32, 39),
                Color.fromARGB(255, 32, 58, 67),
                Color.fromARGB(255, 44, 83, 100)
              ],
            ),
          ),
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
                    margin: const EdgeInsets.all(8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
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
                    margin: const EdgeInsets.all(8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
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
                    margin: const EdgeInsets.all(8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
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
                    margin: const EdgeInsets.all(8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
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