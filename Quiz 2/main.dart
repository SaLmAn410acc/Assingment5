// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 8, right: 8),
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          width: 120,
                          height: 60,
                          child: Image.network(
                              "https://cdn.shopify.com/s/files/1/0522/1623/4177/files/1.png?height=628&pad_color=fff&v=1610706152&width=1200")),
                      const Icon(
                        Icons.search,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(8),
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Running",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      Text("15 Results"),
                    ],
                  ),
                ),
                container_full("Mens", "Fuelcell Echo", "99.99",
                    "https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c2hvZXN8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80"),
                container_full("Men's Fuelcell", "Rebels", "129.99",
                    "https://img.freepik.com/free-photo/colorful-sport-shoes-green_151013-4554.jpg?size=626&ext=jpg"),
                container_full("Side Blocks", "1200", "139.99",
                    "https://cdn.luxe.digital/media/2021/06/18093702/most-comfortable-men-sneakers-adidas-ultraboost-21-review-luxe-digital%402x.jpg"),
                container_full("Mens", "Fuelcell Natural", "100.00",
                    "https://amazonxyz.com/wp/wp-content/uploads/2020/12/41u06HG0ScL.jpg"),
                container_full("Mens", "Fuelcell Hero", "150.00",
                    "https://media.istockphoto.com/photos/running-shoes-picture-id1249496770?b=1&k=20&m=1249496770&s=170667a&w=0&h=_SUv4odBqZIzcXvdK9rqhPBIenbyBspPFiQOSDRi-RI="),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.red.withOpacity(.60),
          selectedFontSize: 14,
          unselectedFontSize: 14,
          onTap: (value) {

          },
          items: const [
            BottomNavigationBarItem(
              title: Text('Home'),
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              title: Text('Catalog'),
              icon: Icon(Icons.grid_3x3),
            ),
            BottomNavigationBarItem(
              title: Text('Blog'),
              icon: Icon(Icons.shop),
            ),
            BottomNavigationBarItem(
              title: Text('Profile'),
              icon: Icon(Icons.person_pin),
            ),
            BottomNavigationBarItem(
              title: Text('More'),
              icon: Icon(Icons.more),
            ),
          ],
        ),
      ),
    );
  }
}

Widget container_full(var title1, var title2, var price, var add) {
  return Container(
    margin: EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 12),
    height: 150,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.3),
          spreadRadius: 3,
          blurRadius: 3,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
    ),
    child: Row(
      children: [
        Container(
          width: 160,
          margin: EdgeInsets.only(right: 8),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(add),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 12,
            ),
            Text(
              title1,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Text(
              title2,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Mens",
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
            Row(
              children: const [
                Icon(
                  Icons.star,
                  color: Colors.black,
                ),
                Icon(
                  Icons.star,
                  color: Colors.black,
                ),
                Icon(
                  Icons.star,
                  color: Colors.black,
                ),
                Icon(
                  Icons.star,
                  color: Colors.black,
                ),
                Icon(
                  Icons.star,
                  color: Colors.black,
                ),
              ],
            ),
            Text(
              "\$${price}",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    ),
  );
}
