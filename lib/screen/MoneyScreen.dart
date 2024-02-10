import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/material.dart';
import 'package:whitehouse/Data/list_itemsData.dart';
import 'package:whitehouse/Model/list_Item.dart';
import 'package:whitehouse/widget/cart_view_one.dart';
import 'package:whitehouse/widget/cart_view_two.dart';
import 'package:whitehouse/widget/navigaton_drawer_widget.dart';

import '../config/Styles.dart';
import '../config/colors.dart';
import 'CustomAppBar.dart';

class MoneyScreen extends StatefulWidget {
  const MoneyScreen({Key key}) : super(key: key);

  @override
  _MoneyScreenState createState() => _MoneyScreenState();
}

class _MoneyScreenState extends State<MoneyScreen> {

  @override
  Widget build(BuildContext context) {

    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: CustomAppBar(),
        drawer: NavigationDrawerWidget(),
        body: Container(
          height: screenHeight,
          width: screenWidth,
          child: Stack(
            children: [
              Container(
                height: screenHeight * 0.3,
                width: screenWidth,
                color: Colrs.primaryColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _Heading(),
                    SizedBox(height: screenHeight*0.04,),
                    _Slider(),
                  ],
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                top: screenHeight*0.2,
                child: BottomPart(screenHeight,screenWidth),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _Heading() {
    return Container(
      padding: const EdgeInsets.only(left: 30,right: 30),
      child: Text(
        'My Account',
        style: TextStyle(
          color: Colors.white,
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  _Slider() {
    return Container(
      padding: const EdgeInsets.only(left: 30,right: 30),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            color: Colors.white54,
            borderRadius: BorderRadius.circular(25.0)
        ),
        child: TabBar(
          indicator: BubbleTabIndicator(
            tabBarIndicatorSize: TabBarIndicatorSize.tab,
            indicatorHeight: 40.0,
            indicatorColor: Colors.white,
          ),
          labelStyle: Styles.tabTextStyle,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.white,
          tabs: [
            Text('Cart'),
            Text('Static'),
          ],
          onTap: (index) {},
        ),
      ),
    );
  }

  BottomPart(double screenHeight,double screenWidth) {
    return SingleChildScrollView(
      child: Container(
        height: screenHeight*0.55,
        padding: const EdgeInsets.only(left: 5,top:20,right: 5),
        width: screenWidth,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20)
            )
        ),
        child: TabBarView(
          children: [
            CartViewOne(),
            CartViewTwo(),
          ],
        ),
      ),
    );
  }


}
