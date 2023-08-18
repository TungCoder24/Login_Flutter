import 'package:flutter/material.dart';

class itemNews extends StatefulWidget {
  String img;
  String title;
  itemNews({super.key, required this.img, required this.title});

  @override
  State<itemNews> createState() => _itemNewsState();
}

class _itemNewsState extends State<itemNews> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 170,
      child: Card(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        shadowColor: Colors.grey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              child: Image.asset(
                widget.img,
                width: 400,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 1, left: 5, right: 5),
              child: Wrap(
                alignment: WrapAlignment.center,
                children: [
                  Text(
                    widget.title,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
