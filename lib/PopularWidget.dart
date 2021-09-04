import 'package:flutter/material.dart';

class PopularWidget extends StatelessWidget {
  final images;
  final name;
  const PopularWidget({Key? key, this.images, this.name}) : super(key: key);

  static const txtcolorr = Color(0xff526f83);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: Alignment.topRight,
        width: 160,
        height: 50,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.all(2),
              width: 50,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                  Text('2K')
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(name,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w700)),
                ),
              ],
            )
          ],
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image:
                DecorationImage(fit: BoxFit.cover, image: AssetImage(images))),
      ),
    );
  }
}
