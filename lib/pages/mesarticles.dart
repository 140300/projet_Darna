// import 'dart:html';
import 'package:projet_mobile/pages/acceuil.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

//import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class mesarticles extends StatelessWidget {
  const mesarticles ({super.key});


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_left_sharp, size: 35),
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (BuildContext context) => Acceuil()));
            },
          ),
          title: Text("Mes articles"),
          titleTextStyle: TextStyle(
            letterSpacing: 2,
            color: Colors.white,
            fontStyle: FontStyle.normal,
            fontSize: 25.0,
          ),
          backgroundColor: Colors.black,
        ),
        body: Wrap(children: [
          Container(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                        height: MediaQuery.of(context).size.height * 0.25,
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: Image.asset(
                          "assets/img/hala.png",
                          fit: BoxFit.cover,
                        )),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              color: Colors.white,
                              child: IconButton(
                                  color: Colors.black,
                                  icon: Icon(
                                    Icons.camera_alt,
                                    size: 25,
                                  ),
                                  onPressed: () {}),
                            ),
                            Container(
                              color: Colors.white,
                              child: IconButton(
                                  color: Colors.black,
                                  icon: Icon(
                                    Icons.shopping_basket,
                                    size: 25,
                                  ),
                                  onPressed: () {}),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 0.4,
                  color: Colors.white,
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}

