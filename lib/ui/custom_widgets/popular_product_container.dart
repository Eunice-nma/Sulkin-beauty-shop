import 'package:flutter/material.dart';
import 'package:sukin/utilities/constant.dart';


class PopularProducts extends StatelessWidget {
  final String url;
  final String name;
  final String description;
  final double price;

  const PopularProducts({this.url, this.price, this.name, this.description});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: <Widget>[
          Container(
            width: 70,
            height: 70,
            child: Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/images/$url.png',
                  width: 50,
                  height: 50,
                ),
              ),
            ),
          ),
          SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                name,
                style: kRegularText,
              ),
              Text(
                description,
                style: kSmallText,
              ),
            ],
          ),
          Spacer(),
          Text(
            '\$$price',
            style: kRegularText,
          ),
        ],
      ),
    );
  }
}