import 'package:flutter/material.dart';

class itemEvent extends StatefulWidget {
  String image;
  String title;
  itemEvent({super.key, required this.image, required this.title});

  @override
  State<itemEvent> createState() => _itemEventState();
}

class _itemEventState extends State<itemEvent> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5, left: 1, right: 1),
      child: SizedBox(
        width: 170,
        height: 170,
        child: Card(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(5))),
          shadowColor: Colors.grey,
          child: Column(
            children: [
              Card(
                child: Image.asset(
                  widget.image,
                  height: 100,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 5, right: 5),
                child: Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    Text(
                      widget.title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
