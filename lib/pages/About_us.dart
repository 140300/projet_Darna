// import 'dart:html';
import 'package:projet_mobile/pages/Acceuil.dart';
import 'package:projet_mobile/pages/mesarticles.dart';
import 'package:flutter/material.dart';



class About_us extends StatelessWidget {
  const About_us({super.key});

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
                  // ma5edmetch arj3elha
                  builder: (BuildContext context) => Acceuil()));
            },
          ),
          title: Text("About us"),
          titleTextStyle: TextStyle(
            letterSpacing: 2,
            color: Colors.white,
            fontStyle: FontStyle.normal,
            fontSize: 25.0,
          ),
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            Container(
              height: 500,
              width: double.infinity,
              color: Colors.black,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Darna",
                    style: TextStyle(
                      fontFamily: 'cursive',
                      fontSize: 55,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text(
                      "Make your interior design more personolized !!!",
                      style: TextStyle(
                        fontFamily: 'cursive',
                        fontSize: 45,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Icon(
                    Icons.email,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Darna@gmail.com",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Icon(
                    Icons.phone,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "98 345 789",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Icon(
                    Icons.facebook,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Darna ",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
