import 'package:contactus/contactus.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

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
        title:  Text('PROFILE', style: GoogleFonts.comfortaa( color: Colors.white,fontWeight: FontWeight.w500,fontSize: 30) ),
        backgroundColor: const Color.fromARGB(255, 15, 32, 39),
        leading: const BackButton(),
      ),
      body: SafeArea(
        child: Container(
          color: const Color.fromARGB(255, 18, 18, 18),
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: ListView(
              
              
              children: [
                Text('Personal Detail',style: GoogleFonts.arimo(color: Colors.white,fontSize: 20),),
                
                InkWell(
                  onTap: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
                  },
                   child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(colors: [
                          Color.fromARGB(255, 1, 115, 116),
                          Color.fromARGB(255, 1, 162, 153),
                        ],begin: Alignment.centerRight,
                        end: Alignment.centerLeft ),
                        color: const Color.fromARGB(255, 173, 239, 209)),
                    margin: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:  [
                        SizedBox(width: 20,),
                       const Icon(
                          Icons.balance,
                          size: 45,
                          color: Colors.white,
                        ),
                        SizedBox(width: 20,),
                        Text(
                          "Wallet Balance",
                          style:GoogleFonts.jost (
                              color: Colors.white,
                              fontSize: 20,
                              
                              ),
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
                        gradient: LinearGradient(colors: [
                          Color.fromARGB(255, 1, 115, 116),
                          Color.fromARGB(255, 1, 162, 153),
                        ],begin: Alignment.centerRight,
                        end: Alignment.centerLeft ),
                        color: const Color.fromARGB(255, 173, 239, 209)),
                    margin: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:  [
                        SizedBox(width: 20,),
                       const Icon(
                          Icons.wallet,
                          size: 45,
                          color: Colors.white,
                        ),
                        SizedBox(width: 20,),
                        Text(
                          "Wallet Address",
                          style:GoogleFonts.jost (
                              color: Colors.white,
                              fontSize: 20,
                              
                              ),
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
                        gradient: LinearGradient(colors: [
                          Color.fromARGB(255, 1, 115, 116),
                          Color.fromARGB(255, 1, 162, 153),
                        ],begin: Alignment.centerRight,
                        end: Alignment.centerLeft ),
                        color: const Color.fromARGB(255, 173, 239, 209)),
                    margin: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:  [
                        SizedBox(width: 20,),
                       const Icon(
                          Icons.history_edu_outlined,
                          size: 45,
                          color: Colors.white,
                        ),
                        SizedBox(width: 20,),
                        Text(
                          "Transaction History",
                          style:GoogleFonts.jost (
                              color: Colors.white,
                              fontSize: 20,
                              
                              ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 100,),
                InkWell(
                  onTap: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
                  },
                  child: Container(
                    width: 50,
                   
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        


                        gradient: LinearGradient(colors: [
                          Color.fromARGB(255, 220, 28, 19),
                          Color.fromARGB(255, 234, 76, 70),
                        ],begin: Alignment.centerRight,
                        end: Alignment.centerLeft ),
                        color: const Color.fromARGB(255, 173, 239, 209)),
                    margin: const EdgeInsets.all(60),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  [
                        
                       const Icon(
                          Icons.logout_outlined,
                          size: 50,
                          color: Colors.white,
                        ),
                        SizedBox(width: 20,),
                        Text(
                          "Logout",
                          style:GoogleFonts.jost (
                              color: Colors.white,
                              fontSize: 30,
                              
                              ),
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