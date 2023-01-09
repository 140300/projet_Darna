import 'acceuil.dart';
import 'package:projet_mobile/pages/About_us.dart';
import 'package:projet_mobile/pages/Add_article.dart';
import 'package:projet_mobile/pages/mesarticles.dart';
import 'package:flutter/material.dart';

class Acceuil extends StatelessWidget {
  const Acceuil({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            title: Text("Darna"),
            titleTextStyle: TextStyle(
                color: Colors.white,
                fontStyle: FontStyle.normal,
                fontSize: 28.0,
                fontFamily: 'cursive'),
            backgroundColor: Colors.black,
            /* leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),*/
          ),
          drawer: Drawer(
            child: ListView(
              children: [
                DrawerHeader(
                    decoration: BoxDecoration(color: Colors.black),
                    child: Center(
                      child: Text("Darna",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 50,
                              fontFamily: 'cursive')),
                    )),
                // login list view
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 50, 8, 0),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border(top: BorderSide(color: Colors.grey))),
                    child: InkWell(
                      onTap: () => {
                        // Navigator.of(context).pushReplacement(MaterialPageRoute(
                        //   builder: (BuildContext context) => Profile()))
                      },
                      splashColor: Colors.lightBlue,
                      child: Container(
                        height: 70,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.login),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Log in ",
                                      style: TextStyle(
                                        fontSize: 20,
                                      )),
                                ),
                              ],
                            ),
                            Icon(Icons.arrow_right),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                // first listview item
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border(top: BorderSide(color: Colors.grey))),
                    child: InkWell(
                      onTap: () => {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) => mesarticles()))
                      },
                      splashColor: Colors.lightBlue,
                      child: Container(
                        height: 70,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.person),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Profile",
                                      style: TextStyle(
                                        fontSize: 20,
                                      )),
                                ),
                              ],
                            ),
                            Icon(Icons.arrow_right),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                // second listview item
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border(top: BorderSide(color: Colors.grey))),
                    child: InkWell(
                      onTap: () => {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) => Add_article()))
                      },
                      splashColor: Colors.lightBlue,
                      child: Container(
                        height: 70,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.bar_chart),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Store",
                                      style: TextStyle(
                                        fontSize: 20,
                                      )),
                                ),
                              ],
                            ),
                            Icon(Icons.arrow_right),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                // third list item element
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border(
                            top: BorderSide(color: Colors.grey),
                            bottom: BorderSide(color: Colors.grey))),
                    child: InkWell(
                      onTap: () => {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) => About_us()))
                      },
                      splashColor: Colors.lightBlue,
                      child: Container(
                        height: 70,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.info),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("About_us",
                                      style: TextStyle(
                                        fontSize: 20,
                                      )),
                                ),
                              ],
                            ),
                            Icon(Icons.arrow_right),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),

          // body
          body: Column(
            children: [
              /*Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.4,
                 child: Image.asset(
                   "assets/img/first_img.png",
                 ),
              )*/
              Container(
                // color: Colors.green,
                height: MediaQuery.of(context).size.height * 0.25,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/img/first_img.png'))),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 20, 30, 0),
                  child: Text(
                    "Make your Interior\n Design More\n Personalized",
                    style: TextStyle(
                      fontFamily: 'cursive',
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.amber,
                height: MediaQuery.of(context).size.height * 0.08,
                width: double.infinity,
              ),
              Container()
            ],
          )),
    );
  }
}
/*
// class permet de faire la liste view of the drawer
class CustomListTitle extends StatelessWidget {
  IconData icon;
  String text;
  Function onTap;
  CustomListTitle(this.icon, this.text, this.onTap);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
      child: InkWell(
        onTap: onTap(),
        splashColor: Colors.lightBlue,
        child: Container(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(icon),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(text,
                        style: TextStyle(
                          fontSize: 25,
                        )),
                  ),
                ],
              ),
              Icon(Icons.arrow_right),
            ],
          ),
        ),
      ),
    );
  }
}*/
