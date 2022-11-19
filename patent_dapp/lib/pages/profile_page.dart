import 'package:contactus/contactus.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

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
                        color: const Color.fromARGB(255, 173, 239, 209)),
                    margin: const EdgeInsets.all(8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.logout_outlined,
                          size: 50,
                          color: Colors.black,
                        ),
                        Text(
                          "Logout",
                          style: TextStyle(
                              color: Colors.black,
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
                  child: Neumorphic(
                    style: NeumorphicStyle(
                        shape: NeumorphicShape.concave,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(30)),
                        depth: 4,
                        lightSource: LightSource.topLeft,
                        shadowLightColor: Color.fromARGB(255, 114, 206, 237),
                        color: Color.fromARGB(255, 114, 206, 237)),
                    margin: const EdgeInsets.all(8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.money,
                          size: 50,
                          color: Colors.black,
                        ),
                        Text(
                          "Wallet Balance",
                          style: TextStyle(
                              color: Colors.black,
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
                        color: const Color.fromARGB(255, 173, 239, 209)),
                    margin: const EdgeInsets.all(8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.post_add_outlined,
                          size: 50,
                          color: Colors.black,
                        ),
                        Text(
                          "Wallet Address",
                          style: TextStyle(
                              color: Colors.black,
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
                        color: const Color.fromARGB(255, 173, 239, 209)),
                    margin: const EdgeInsets.all(8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.history,
                          size: 50,
                          color: Colors.black,
                        ),
                        Text(
                          "Transaction History",
                          style: TextStyle(
                              color: Colors.black,
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