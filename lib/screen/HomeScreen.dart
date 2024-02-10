import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:whitehouse/config/colors.dart';
import 'package:whitehouse/widget/navigaton_drawer_widget.dart';

import 'CustomAppBar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: NavigationDrawerWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopPart(h,w),
            MiddlePart(h,w),
            BottomPart(h,w),
          ],
        ),
      ),
    );
  }

  TopPart(double h,double w) {
    return Container(
      height: h * 0.30,
      width: w,
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: 20,
      ),
      decoration: BoxDecoration(
        color: Colrs.primaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40.0),
          bottomRight: Radius.circular(40.0),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("15,000",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.white),),
          Text("Total Balance",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white.withOpacity(0.7))),
          SizedBox(height: h*0.05,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              FlatButton.icon(
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 20.0,
                ),
                onPressed: () {},
                color: Colors.deepOrange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                icon: const Icon(
                  Icons.credit_card,
                  color: Colors.white,
                ),
                label: Text(
                  'Credit',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600,),
                ),
                textColor: Colors.white,
              ),
              FlatButton.icon(
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 20.0,
                ),
                onPressed: () {},
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                icon: const Icon(
                  Icons.card_giftcard,
                  color: Colors.white,
                ),
                label: Text(
                  'Dedit',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600,),
                ),
                textColor: Colors.white,
              ),
            ],
          ),
        ],
      ),
    );
  }

  MiddlePart(double h,double w) {
    return Container(
      height: h * 0.2,
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.deepOrange,
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(left: 20,right: 20,),
              child: CircularPercentIndicator(
                animation: true,
                animationDuration: 1500,
                radius: h*0.07,
                lineWidth: 7,
                percent: 0.4,
                progressColor: Colors.white,
                backgroundColor: Colors.deepOrange.shade200,
                circularStrokeCap: CircularStrokeCap.round,
                center: Text("40%",style: TextStyle(fontSize: 25,color: Colors.white),),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Credit Account Balance",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w900
                  ),),
                SizedBox(height: h*0.01,),
                Row(
                  children: [
                    Text("RS. ",style: TextStyle(color: Colors.white,fontSize: 20),),
                    Text("1000.00",style: TextStyle(color: Colors.white,fontSize: 20),),
                  ],
                ),
              ],
            ),
            SizedBox(width: 5.0,)
          ],
        ),
      ),
    );
  }

  BottomPart(double h,double w) {
    return Container(
      height: h * 0.35,
      padding: const EdgeInsets.only(top: 5,left: 20,right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Next Events",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 22),),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      height: h * 0.12,
                      width: h * 0.12,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/Images/cooking.jpg",
                            ),
                            fit: BoxFit.cover,
                          )
                      ),
                    ),
                    SizedBox(height: h * 0.015),
                    Text(
                      "Cooking",
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "Time",
                      style: const TextStyle(
                        fontSize: 16.0,
                        color: Colors.red,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      height: h * 0.12,
                      width: h * 0.12,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/Images/brining.jpg",
                          ),
                          fit: BoxFit.cover,
                        )
                      ),
                    ),
                    SizedBox(height: h * 0.015),
                    Text(
                      "Water Bringing",
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "Cleaning",
                      style: const TextStyle(
                        fontSize: 16.0,
                        color: Colors.red,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      height: h * 0.12,
                      width: h * 0.12,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/Images/cleaning.jpg",
                            ),
                            fit: BoxFit.cover,
                          )
                      ),
                    ),
                    SizedBox(height: h * 0.015),
                    Text(
                      "Cleaning",
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "Time",
                      style: const TextStyle(
                        fontSize: 16.0,
                        color: Colors.red,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
