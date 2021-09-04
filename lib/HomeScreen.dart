import 'package:flutter/material.dart';

import 'CategoryCard.dart';
import 'PopularWidget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final txtcolorr = Color(0xff526f83);
  final scolor = Color(0xff067eed);

  List data = [
    {"image": 'assets/1.png', 'name': 'Bali'},
    {"image": 'assets/goa.png', 'name': 'Goa'},
    {"image": 'assets/himachal.png', 'name': 'Himachal'},
    {"image": 'assets/kashmir.png', 'name': 'Kashmir'}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        leading: Icon(
          Icons.workspaces_outlined,
          size: 30,
        ),
        //  centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.location_on,
              color: scolor,
            ),
            Text(
              'Bali,Indonesia',
              style: TextStyle(color: txtcolorr),
            )
          ],
        ),

        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.person_add,
              size: 30,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Lets go to trip \nwith us!',
                  style: TextStyle(
                      color: txtcolorr,
                      fontSize: 25,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.search),
                    ),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: 'Search'),
                      ),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    color: Color(0xfff7f7f8),
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Text('Category',
                  style: TextStyle(
                      color: txtcolorr,
                      fontSize: 18,
                      fontWeight: FontWeight.w600)),
              trailing: Text('View All',
                  style: TextStyle(
                      color: txtcolorr,
                      fontSize: 16,
                      fontWeight: FontWeight.w200)),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CategoryCard(
                    image: 'assets/sunbed.png',
                    name: 'Beachs',
                  ),
                  CategoryCard(
                    image: 'assets/mountain.png',
                    name: 'Mountains',
                  ),
                  CategoryCard(
                    image: 'assets/mountain.png',
                    name: 'Forest',
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return PopularWidget(
                    images: data[index]['image'],
                    name: data[index]['name'],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
