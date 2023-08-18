import 'package:flutter/material.dart';

import '../items/itemEvent.dart';
import '../items/itemNews.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  "assets/images/bannerMaybay.jpg",
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 20,
                  left: 1,
                  child: Image.asset("assets/images/image 1.png"),
                ),
                const Positioned(
                  bottom: 20,
                  right: 20,
                  child: Text(
                    "WELCOM ON BOARD",
                    style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 71, 96, 101),
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30, top: 30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "SỰ KIỆN",
                    style: TextStyle(
                        color: Color.fromARGB(255, 81, 165, 235),
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 175,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return itemEvent(
                        image: "assets/images/dtn.jpg",
                        title: "Kỉ niệm 30 năm thành lập.....");
                  },
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30, top: 30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "TIN TỨC",
                    style: TextStyle(
                        color: Color.fromARGB(255, 81, 165, 235),
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 5, bottom: 20, left: 8, right: 8),
              child: SizedBox(
                height: 175,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return itemNews(
                        img: "assets/images/bannerDTN.jpg",
                        title:
                            "Tuổi trẻ VietNamAirLines: Nhiều hoạt động thực hướng tới kỷ niệm 5 năm ngày thành lập QLVNN TDN và 30 năm thành lập hãng hàng không QG");
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
