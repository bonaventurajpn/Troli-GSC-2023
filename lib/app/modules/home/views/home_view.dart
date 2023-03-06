import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   title: const Text('HomeView'),
      //   centerTitle: true,
      // ),
      body: Stack(children: [
        Container(
          width: Get.width,
          child: Image.asset(
            "assets/image/Ellipse 8.png",
            fit: BoxFit.cover,
          ),
        ),
        //layer body
        Column(
          children: [
            SizedBox(
              height: 62,
            ),
            Container(
              width: 100,
              height: 51,
              child: Image.asset(
                "assets/logo/logo.png",
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(left: 30, top: 120),
          child: Text(
            "Hi, Nanda!",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontFamily: 'Nunito',
            ),
          ),
        ),
        Stack(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 150),
              width: 389,
              height: 156,
              //color: Colors.amber,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(9),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade500,
                        spreadRadius: 1,
                        blurRadius: 8,
                        //blurStyle: BlurStyle.outer,
                        offset: Offset(0, 2))
                  ]),
              child: Container(
                child: Image.asset(
                  "assets/logo/poin.png",
                ),
                margin: EdgeInsets.only(bottom: 60, right: 60),
              ),
              //child: Image.asset("assets/image/kotak.png")
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsetsDirectional.only(top: 240),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Container(
                      child: Image.asset("assets/image/Primary.png"),
                    ),
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 0)),
                  ),
                ),
                Container(
                  margin: EdgeInsetsDirectional.only(top: 240),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Container(
                      child: Image.asset("assets/image/Secondary.png"),
                    ),
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 0)),
                  ),
                )
              ],
            )
          ],
        ),
        Column(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              margin: EdgeInsets.only(top: 310, left: 10, right: 10),
              width: 389,
              height: 100,
              //color: Colors.amber,
              //margin: EdgeInsetsDirectional.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Container(
                      child: Center(
                        child: Text(
                          "Sell Product",
                          style:
                              TextStyle(color: Color(0xFF384E20), fontSize: 23),
                        ),
                      ),
                      width: 170,
                      height: 41,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4),
                          border:
                              Border.all(color: Color(0xFF384E20), width: 1.5)),
                    ),
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 0)),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Container(
                      child: Center(
                        child: Text(
                          "Buy Product",
                          style: TextStyle(
                            color: Color(0xFF384E20),
                            fontSize: 23,
                          ),
                        ),
                      ),
                      width: 170,
                      height: 41,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4),
                          border:
                              Border.all(color: Color(0xFF384E20), width: 1.5)),
                    ),
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 0)),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(children: [
                Container(
                  margin: EdgeInsets.only(right: 300),
                  child: Text(
                    "Article",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(
                    height: 130,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (context, index) => Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Image.asset("assets/image/artikel.png"),
                      ),
                    )),
                Container(
                  margin: EdgeInsets.only(right: 300, top: 20),
                  child: Text(
                    "Video",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(
                    height: 130,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (context, index) => Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Image.asset("assets/image/video.png"),
                      ),
                    )),
              ]),
              width: 785,
              //height: 160,
              //color: Colors.amber,
            )
          ],
        )
      ]),
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Color(0xFF384E20),
        items: [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.shopping_cart, title: 'Shop'),
          TabItem(icon: Icons.notification_add, title: 'Notification'),
          TabItem(icon: Icons.person, title: 'Profile'),
        ],
        initialActiveIndex: 0,
      ),
    );
  }
}
