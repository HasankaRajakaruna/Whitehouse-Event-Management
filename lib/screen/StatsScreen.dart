import 'package:flutter/material.dart';
import 'package:whitehouse/screen/CustomAppBar.dart';
import 'package:whitehouse/widget/navigaton_drawer_widget.dart';

import '../config/colors.dart';

class StatsScreen extends StatefulWidget {
  const StatsScreen({Key key}) : super(key: key);

  @override
  _StatsScreenState createState() => _StatsScreenState();
}

class _StatsScreenState extends State<StatsScreen> {
  @override
  Widget build(BuildContext context) {

    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: CustomAppBar(),
      drawer: NavigationDrawerWidget(),
      body: Container(
        padding: const EdgeInsets.only(
          top: 20.0,
          right: 20.0,
          left: 20.0
        ),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(13.0),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Colrs.gradientLightGreen,
                              Colrs.gradientLightBlue

                            ]
                        ),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      "Food Items",
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.white
                                    ),
                                  ),
                                  SizedBox(height: screenHeight*0.013,),
                                  Text(
                                      "2022/03/18",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.white
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 15.0),
                                color: Colors.transparent,
                                child:Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Rs. ",
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.w900,
                                          color: Colors.white
                                      ),
                                    ),
                                    Text(
                                      "1000/=",
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.w900,
                                          color: Colors.white
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: screenHeight*0.013,),
                          Divider(
                            thickness: 2,
                            height: 2.0,
                            color: Colors.white,
                          ),
                          SizedBox(height: screenHeight*0.01,),
                          Text(
                              "",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w700
                            ),
                          ),
                          SizedBox(height: screenHeight*0.01,),
                        ],
                      ),
                    ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
