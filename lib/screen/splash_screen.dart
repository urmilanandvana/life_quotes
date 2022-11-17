import 'package:flutter/material.dart';
import 'package:life_quotes/global/global.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  PageController controller = PageController();
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (val) {
              setState(() {
                currentPageIndex = val;
              });
            },
            controller: controller,
            scrollDirection: Axis.horizontal,
            children: Global.splashData.map((e) {
              return Column(
                children: [
                  Image.asset(
                    e.image,
                  ),
                  Container(
                    padding: EdgeInsets.all(25),
                    child: Text(
                      textAlign: TextAlign.center,
                      e.title,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 35, right: 35),
                    child: Text(
                      textAlign: TextAlign.center,
                      e.description,
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              );
            }).toList(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                alignment: Alignment.bottomLeft,
                margin: EdgeInsets.all(35),
                child: SmoothPageIndicator(
                  onDotClicked: (val) {},
                  controller: controller,
                  effect: SlideEffect(
                    dotHeight: 12,
                    dotWidth: 12,
                    dotColor: Color(0xff72bdf7),
                    activeDotColor: Color(0xffa539cb),
                  ),
                  count: 4,
                ),
              ),
              (currentPageIndex == 3)
                  ? Container(
                      margin: EdgeInsets.only(right: 15, bottom: 10),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black,
                            backgroundColor: Color(0xff72bdf7),
                            textStyle: TextStyle(
                              fontSize: 18,
                              letterSpacing: 2,
                              fontWeight: FontWeight.w500,
                            ),
                            padding: EdgeInsets.only(left: 25, right: 25),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context).pushNamed("/");
                          },
                          child: Text("Start")),
                    )
                  : Container(
                      margin: EdgeInsets.only(right: 15, bottom: 10),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black,
                            backgroundColor: Color(0xff72bdf7),
                            textStyle: TextStyle(
                              fontSize: 18,
                              letterSpacing: 2,
                              fontWeight: FontWeight.w500,
                            ),
                            padding: EdgeInsets.only(left: 25, right: 25),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                          ),
                          onPressed: () {
                            setState(
                              () {
                                controller.jumpToPage(currentPageIndex + 1);
                              },
                            );
                          },
                          child: Text("Next")),
                    ),
            ],
          ),
        ],
      ),
    );
  }
}
