import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final image;
  final name;
  const CategoryCard({Key? key, this.image, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(10),
        width: 160,
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  image,
                  width: 35,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    name,
                    style: TextStyle(fontSize: 15),
                  ),
                )
              ],
            ),
          ],
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [BoxShadow(color: Colors.grey, spreadRadius: 1)],
            color: Colors.white),
      ),
    );
  }
}
