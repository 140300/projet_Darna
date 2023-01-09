// import 'dart:html';
import 'acceuil.dart';
import 'package:projet_mobile/pages/mesarticles.dart';
import 'package:flutter/material.dart';



class Add_article extends StatelessWidget {
  const Add_article({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_left_sharp, size: 35),
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => mesarticles()));
              },
            ),
          ),
          body: Container(
            color: Colors.black,
            height: double.infinity,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: Center(
                      child: Image.asset(
                    "assets/img/hala.png",
                  )),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        "Add Article",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ],
                ),
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        "Name : ",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                    Container(
                      // margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: 266,
                      height: 40,
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: " Enter your name ..."),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        "Upload the article :",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.upload, color: Colors.white, size: 35),
                      onPressed: () {},
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        "Price :",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      width: 266,
                      height: 40,
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: " Enter price..."),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        "Number : ",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      width: 266,
                      height: 40,
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "  Enter your number..."),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        "Description :   ",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        width: 360,
                        height: 60,
                        // ignore: prefer_const_constructors
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: " Decrire votre article..."),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    child: Text(
                      'Add',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onPressed: () {},
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)))),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
