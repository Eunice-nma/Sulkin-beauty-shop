import 'package:flutter/material.dart';
import 'package:sukin/utilities/constant.dart';


class ProductCard extends StatelessWidget {
  final String url;
  final String name;
  final String description;
  final double price;

  const ProductCard({this.url, this.price, this.name, this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: SizedBox(
        width: 210,
        height: 270,
        child: Card(
          elevation: 2,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: <Widget>[
                Image.asset(
                  'assets/images/$url.png',
                  width: 150,
                  height: 150,
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: kRegularText,
                        ),
                        Text(
                          description,
                          style: kSmallText,
                        ),
                        Text(
                          '\$$price',
                          style: kRegularText,
                        ),
                      ],
                    ),
                    Icon(
                      Icons.shopping_bag,
                      color: kPrimaryColor,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}