// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget block_container(var title, var imgurl) {
    return Container(
      margin: EdgeInsets.only(left: 12, top: 12, right: 12, bottom: 6),
      height: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Container(
            width: 160,
            margin: EdgeInsets.only(right: 8),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(imgurl),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Text(
                    "5.0 (23 Reviews)",
                    style: TextStyle(fontSize: 17),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "20 Pieces ",
                    style: TextStyle(fontSize: 17),
                  ),
                  Text(
                    "\$90",
                    style: TextStyle(
                        color: Colors.purple,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Text(
                "Quantity: 1",
                style: TextStyle(fontSize: 17),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(scaffoldBackgroundColor: const Color(0xFFEF7F9F9)),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "Ecom App UI",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.black,
              ),
              onPressed: () {},
            )
          ],
        ),
        body: ListView(
          children: [
            block_container("Iphone 12",
                "https://images.squarespace-cdn.com/content/v1/59d2bea58a02c78793a95114/1602686328042-601UYWSRVF16QBZ47WX8/iPhone+12+%28PRODUCT%29RED"),
            block_container("Note 20 Ultra",
                "https://cdn.alzashop.com/ImgW.ashx?fd=f16&cd=SAMO0197b2"),
            block_container("Macbook Air",
                "https://cdn.vox-cdn.com/thumbor/XZCZf4KflYkydP2jMhePDo7YSqQ=/1400x0/filters:no_upscale()/cdn.vox-cdn.com/uploads/chorus_asset/file/22046476/vpavic_4291_20201113_0366.0.jpg"),
            block_container("Macbook Pro",
                "https://www.zdnet.com/a/hub/i/r/2020/11/16/37e33024-2892-4bb7-9d21-6ac6f7544def/thumbnail/770x433/5f1b7f881bfb80a9f2bbe02bc6d64b49/apple-macbook-pro-m1-2020-5.jpg"),
            block_container("Gaming PC",
                "https://www.maticstoday.com/wp-content/uploads/2019/10/GamingPC.jpg"),
            block_container("Backlit keyboard", "https://previews.123rf.com/images/cosminxp/cosminxp1905/cosminxp190500332/124531384-closeup-of-laptop-keyboard-illumination-backlit-keyboard.jpg"),
            block_container("Mercedes", "https://cdn.motor1.com/images/mgl/43yJY/s1/2021-mercedes-benz-s-class-front.webp"),   
            block_container("Printer", "https://computerchoice.pk/wp-content/uploads/2020/11/135A-2.jpg"),   
            block_container("Roadster", "https://www.tesla.com/sites/default/files/images/roadster/roadster-social.jpg"),   
            block_container("Royal Enfield", "https://i.pinimg.com/550x/ea/d1/0c/ead10c620e648a212a76a0f7648c7091.jpg"),       
          ],
        ),
      ),
    );
  }
}
