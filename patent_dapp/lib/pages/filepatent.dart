import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    // it will provide us total height and width
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: //theme: new ThemeData(scaffoldBackgroundColor: const Color(0xFFEFEFEF)),
          SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                //decoration: BoxDecoration(color: Colors.black),
                height: size.height * 0.4,
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: size.height * 0.4 - 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                        ),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("images/project.jpg"),
                        ),
                      ),
                    ),
                    //Carbon Emission rate
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        // it will cover 90% of the width
                        width: size.width * 0.9,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50),
                            topLeft: Radius.circular(50),
                          ),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 5),
                              blurRadius: 50,
                              color: Color.fromARGB(255, 153, 156, 182)
                                  .withOpacity(0.4),
                            ),
                          ],
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(50),
                              topLeft: Radius.circular(50),
                            ),
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(255, 246, 98, 230),
                                Color.fromARGB(255, 226, 97, 232),
                                Color.fromARGB(255, 207, 99, 233),
                                Color.fromARGB(255, 170, 100, 235),
                                Color.fromARGB(255, 141, 98, 236),
                              ],
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  // Container(
                                  //   height: 50,
                                  //   //padding: EdgeInsets.all(20),
                                  //   // child: Image.asset(
                                  //   //   "images/co2icon.png",
                                  //   //   color: Colors.black,
                                  //   // ),
                                  // ),
                                  SizedBox(
                                    width: 20,
                                  )
                                ],
                              ),

                              // SizedBox(
                              //   width: 100,
                              // ),
                              Text(
                                " FILE YOUR PROJECT",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              // SizedBox(
                              //   width: 10,
                              // )
                              // Row(
                              //   children[
                              //   Container(
                              //     child: TextField(
                              //       decoration: InputDecoration(
                              //         border: OutlineInputBorder(),
                              //       ),
                              //     ),
                              //   ),
                              //   ],
                              // ),
                              // Container(
                              //   child: TextField(
                              //     decoration: InputDecoration(
                              //       border: OutlineInputBorder(),
                              //     ),
                              //   ),
                              // ),
                              // TextField(
                              //   decoration: InputDecoration(hintText: 'tonne',
                              //   border: OutlineInputBorder(),),
                              // ),

                              // Column(
                              //   children: [
                              //     TextField(
                              //       decoration: InputDecoration(
                              //         hintText: 'Product Name',
                              //         border: OutlineInputBorder(),
                              //       ),
                              //     ),
                              //   ],
                              // )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //Product name
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Project Name',
                              border: OutlineInputBorder(),
                              // suffixIcon: IconButton(
                              //   onPressed: () {
                              //     //clear whats currently in the textfield
                              //     Null();
                              //   },
                              // ),
                            ),
                          ),
                          // Text(
                          //   "Product Name",
                          //   style: Theme.of(context).textTheme.headline6,
                          // )
                        ],
                      ),
                    ),
                    //SizedBox(height: 64, width: 64,),
                  ],
                ),
              ),

              Padding(
                //height: 150,
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  maxLines: 4,
                  decoration: InputDecoration(
                    //isDense: true,
                    hintText: 'Description',
                    border: OutlineInputBorder(),
                    // suffixIcon: IconButton(
                    //   onPressed: () {
                    //     //clear whats currently in the textfield
                    //     Null();
                    //   },
                    // ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                //height: 150,
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  //maxLines: 4,
                  decoration: InputDecoration(
                    //isDense: true,
                    hintText: 'Carbon Emission in Tonne',
                    border: OutlineInputBorder(),
                    // suffixIcon: IconButton(
                    //   onPressed: () {
                    //     //clear whats currently in the textfield
                    //     Null();
                    //   },
                    // ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              CheckboxListTile(
                value: false,
                onChanged: (val) {},
                activeColor: Colors.greenAccent,
                title: Text("Fuel Used"),
              ),
              SizedBox(
                height: 10,
              ),
              CheckboxListTile(
                value: false,
                onChanged: (val) {},
                activeColor: Colors.greenAccent,
                title: Text("Electricity"),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: 500,
                height: 50,
                margin: EdgeInsets.all(20.0),
                padding: EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 10.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 5.0,
                    ),
                    // Text(
                    //   "File Patent",
                    //   style: TextStyle(color: Colors.white),
                    // ),
                    //Spacer(),
                    TextButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.assignment_outlined,
                        color: Colors.white,
                      ),
                      label: Text(
                        "File Project",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
