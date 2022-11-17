import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        title: Text(
          "Life Quotes and sa...",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            letterSpacing: 1,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notification_add,
              color: Colors.amber,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          // CarouselSlider(
          //   carouselController: carouselController,
          //   options: CarouselOptions(
          //     height: 400,
          //     viewportFraction: 0.8,
          //     enlargeCenterPage: true,
          //     initialPage: initialPage,
          //     onPageChanged: (val, _) {
          //       setState(() {
          //         initialPage = val;
          //       });
          //     },
          //   ),
          //   items: animalList.map((e) {
          //     return Container(
          //       decoration: BoxDecoration(
          //         image: DecorationImage(
          //           fit: BoxFit.cover,
          //           image: AssetImage(e),
          //         ),
          //       ),
          //     );
          //   }).toList(),
          // ),
        ],
      ),
    );
  }
}
