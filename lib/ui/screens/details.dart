import 'package:flutter/material.dart';
import 'package:sukin/ui/custom_widgets/rounded_rectangle_button.dart';
import 'package:sukin/utilities/constant.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:badges/badges.dart';
import 'package:get/get.dart';

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  // final List product;

  String name = Get.arguments.name;
  double price = Get.arguments.price;
  String url = Get.arguments.imagePath;
  double sizeML = Get.arguments.sizeML;
  double rating = Get.arguments.rating;
  String description = Get.arguments.description;
  String sizeOZ = (Get.arguments.sizeML * 0.033814).toStringAsFixed(3);

  int productQuantity = 1;
  int cartCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: kPrimaryColor, //change your color here
        ),
        elevation: 0,
        backgroundColor: kScaffoldColor,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: cartCount>0?
            Badge(
              animationDuration: Duration(milliseconds: 300),
              animationType: BadgeAnimationType.fade,
              padding: EdgeInsets.all(5),
              position: BadgePosition.topEnd(top: -4, end: -4),
              badgeContent: Text('$cartCount', style: kBadgeText,),
              child: Icon(
                Icons.shopping_bag,
                color: kPrimaryColor,
                size: 30,
              ),
            ):
            Icon(
              Icons.shopping_bag,
              color: kPrimaryColor,
              size: 30,
            ),
          ),
        ],
      ),
      body: SlidingUpPanel(
        maxHeight: 350,
        defaultPanelState: PanelState.OPEN,
        boxShadow: [BoxShadow(color: Colors.transparent)],
        borderRadius: BorderRadius.circular(30),
        panel: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: kScaffoldColor,
                      borderRadius: BorderRadius.circular(5)),
                  width: 45,
                  height: 5,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        name,
                        style: kSemiBigText,
                      ),
                      Text(
                        "Size $sizeML ml/ $sizeOZ oZ",
                        style: kSmallText,
                      ),
                    ],
                  ),
                  RatingBar.builder(
                    initialRating: rating,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 25,
                    itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: kPrimaryColor,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ],
              ),
              SizedBox(height: 50),
              Text(
                description,
                style: kRegularText,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 15),
              Row(
                children: <Widget>[
                  Text(
                    '\$$price',
                    style: kGreenBigText,
                  ),
                  Spacer(),
                  RoundedRectangleButton(
                    child: Icon(
                      Icons.remove,
                      color: kPrimaryColor,
                      size: 17,
                    ),
                    onPress: () {
                      setState(() {
                        if(productQuantity>1){
                          productQuantity--;
                        }
                      });
                    },
                    color: kPrimaryColor,
                    outlined: true,
                    width: 35,
                  ),
                  Text(
                    '$productQuantity',
                    style: kRegularText,
                  ),
                  RoundedRectangleButton(
                    child: Icon(
                      Icons.add,
                      color: kPrimaryColor,
                      size: 17,
                    ),
                    onPress: () {
                      setState(() {
                        productQuantity++;
                      });
                    },
                    color: kPrimaryColor,
                    outlined: true,
                    width: 35,
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  RoundedRectangleButton(
                    child: Icon(
                      Icons.favorite_outline,
                      color: kPrimaryColor,
                      size: 28,
                    ),
                    onPress: () {},
                    outlined: true,
                    width: 70,
                  ),
                  Spacer(),
                  RoundedRectangleButton(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        'Add To Cart',
                        style: kWhiteButtonText,
                      ),
                    ),
                    color: kPrimaryColor,
                    onPress: () {
                      setState(() {
                        cartCount= productQuantity;
                      });
                    },
                    outlined: false,
                  ),
                ],
              ),
            ],
          ),
        ),
        body: Column(
          children: <Widget>[
            Image.asset(
              'assets/images/$url.png',
              width: 370,
              height: 370,
            ),
          ],
        ),
      ),
    );
  }
}
