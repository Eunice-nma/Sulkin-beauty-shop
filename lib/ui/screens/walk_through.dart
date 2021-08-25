import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:sukin/ui/custom_widgets/center_text.dart';
import 'package:sukin/ui/custom_widgets/rounded_rectangle_button.dart';
import 'package:sukin/utilities/constant.dart';
import 'package:sukin/utilities/slider_model.dart';
import 'package:get/get.dart';
import 'home.dart';

class WalkThrough extends StatefulWidget {
  @override
  _WalkThroughState createState() => _WalkThroughState();
}

class _WalkThroughState extends State<WalkThrough> {

  int _current = 0;
  final CarouselController _controller = CarouselController();
  bool autoPlay= true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            // Container(
            //   child: Column(
            //     children: [
            //       CarouselSlider(
            //         items: sliderItems.map((i) {
            //           return Padding(
            //             padding: const EdgeInsets.all(20.0),
            //             child: Column(
            //               mainAxisAlignment: MainAxisAlignment.center,
            //               children: <Widget>[
            //                 Expanded(child: Image.asset(i.image)),
            //                 CenterText(
            //                   child: i.description,
            //                   style: kRegularText,
            //                 )
            //               ],
            //             ),
            //           );
            //         }).toList(),
            //         carouselController: _controller,
            //         options: CarouselOptions(
            //             height: 600,
            //             autoPlay: autoPlay,
            //             enlargeCenterPage: true,
            //             viewportFraction: 1,
            //             onPageChanged: (index, reason) {
            //               setState(() {
            //                 _current = index;
            //                 if (index==2){
            //                   autoPlay= false;
            //                 }
            //               });
            //             }),
            //       ),
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         children: sliderItems.asMap().entries.map((entry) {
            //           return GestureDetector(
            //               onTap: () => _controller.animateToPage(entry.key),
            //               child: Container(
            //                 width: 8.0,
            //                 height: 8.0,
            //                 margin:
            //                 EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
            //                 decoration: BoxDecoration(
            //                   shape: BoxShape.circle,
            //                   color:
            //                   (_current == entry.key ? kPrimaryColor : kGreyColor),
            //                 ),
            //               ));
            //         }).toList(),
            //       ),
            //     ],
            //   ),
            // ),
            CustomCarousel(
              sliderList: sliderItems,
              controller: _controller,
              autoPlay: autoPlay,
              current: _current,
              onPageChange: (index, reason) {
                setState(() {
                  _current = index;
                  if (index==2){
                    autoPlay= false;
                  }
                });
              },
            ),
            Spacer(),
            autoPlay?
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                TextButton(
                  onPressed: () {
                    _controller.jumpToPage(2);
                  },
                  child: Text(
                    'Skip',
                    style: kSkipButtonText,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    _controller.nextPage(
                      duration: Duration(milliseconds: 700),
                      curve: Curves.linear
                    );
                  },
                  child: Text(
                    'Next',
                    style: kRegularText,
                  ),
                ),
              ],
            ):
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RoundedRectangleButton(
                child: Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: Text('Get Started', style: kWhiteButtonText,),
                ),
                color: kPrimaryColor,
                outlined: false,
                onPress: (){
                  Get.to(()=>Home());
                },
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

class CustomCarousel extends StatelessWidget {
  final List sliderList;
  final CarouselController controller;
  final bool autoPlay;
  final Function onPageChange;
  final int current;


  const CustomCarousel({this.autoPlay, this.controller, this.onPageChange, this.current, this.sliderList});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CarouselSlider(
            items: sliderList.map((i) {
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(child: Image.asset(i.image)),
                    CenterText(
                      child: i.description,
                      style: kRegularText,
                    )
                  ],
                ),
              );
            }).toList(),
            carouselController: controller,
            options: CarouselOptions(
                height: 600,
                autoPlay: autoPlay,
                enlargeCenterPage: true,
                viewportFraction: 1,
                onPageChanged: onPageChange,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: sliderItems.asMap().entries.map((entry) {
              return GestureDetector(
                  onTap: () => controller.animateToPage(entry.key),
                  child: Container(
                    width: 8.0,
                    height: 8.0,
                    margin:
                    EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color:
                      (current == entry.key ? kPrimaryColor : kGreyColor),
                    ),
                  ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}


