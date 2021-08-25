import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:sukin/ui/custom_widgets/popular_product_container.dart';
import 'package:sukin/ui/custom_widgets/product_card.dart';
import 'package:sukin/ui/custom_widgets/rounded_rectangle_button.dart';
import 'package:sukin/ui/screens/details.dart';
import 'package:sukin/utilities/animationClass.dart';
import 'package:sukin/utilities/constant.dart';
import 'package:sukin/utilities/product_model.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(
                          Icons.more_horiz_outlined,
                          color: kPrimaryColor,
                          size: 30,
                        ),
                        Icon(
                          Icons.search,
                          color: kPrimaryColor,
                          size: 30,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Hi There,',
                      style: kGreetingText,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Start your beauty journey today.',
                      style: kRegularText,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        RoundedRectangleButton(
                          child: Text(
                            'All',
                            style: kRegularText,
                          ),
                          onPress: () {},
                          color: Colors.white,
                          outlined: false,
                          width: 60,
                        ),
                        RoundedRectangleButton(
                          child: Text(
                            'Face',
                            style: kRegularText,
                          ),
                          onPress: () {},
                          color: Colors.transparent,
                          outlined: false,
                          width: 60,
                        ),
                        RoundedRectangleButton(
                          child: Text(
                            'Body',
                            style: kRegularText,
                          ),
                          onPress: () {},
                          color: Colors.transparent,
                          outlined: false,
                          width: 60,
                        ),
                        RoundedRectangleButton(
                          child: Text(
                            'Hair',
                            style: kRegularText,
                          ),
                          onPress: () {},
                          color: Colors.transparent,
                          outlined: false,
                          width: 60,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 280,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: products.length,
                  itemBuilder: (context, int index) {
                    return GestureDetector(
                      onTap: (){
                        Get.to(()=>Details(), arguments: products[index]);
                      },
                      child: ProductCard(
                        name: products[index].name,
                        description: products[index].type,
                        url: products[index].imagePath,
                        price: products[index].price,
                      ),
                    );
                  }
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Popular',
                      style: kGreetingText,
                    ),
                    Text(
                      'see all',
                      style: kRegularText,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: popularProducts.map((popularProduct) {
                  return GestureDetector(
                    onTap: () {
                      Get.to(() => Details(), arguments: popularProduct);
                    },
                    child: PopularProducts(
                      name: popularProduct.name,
                      description: popularProduct.type,
                      url: popularProduct.imagePath,
                      price: popularProduct.price,
                    ),
                  );
                }).toList(),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 32,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: kPrimaryColor,
              ),
              activeIcon: Icon(
                Icons.home,
                color: kPrimaryColor,
              ),
              label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_outline,
                color: kPrimaryColor,
              ),
              activeIcon: Icon(
                Icons.favorite,
                color: kPrimaryColor,
              ),
              label: 'favourite'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications_none_outlined,
                color: kPrimaryColor,
              ),
              activeIcon: Icon(
                Icons.notifications,
                color: kPrimaryColor,
              ),
              label: 'notification'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
                color: kPrimaryColor,
              ),
              activeIcon: Icon(
                Icons.person,
                color: kPrimaryColor,
              ),
              label: 'person'),
        ],
      ),
    );
  }
}

