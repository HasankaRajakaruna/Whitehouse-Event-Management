import 'package:flutter/material.dart';
import 'package:whitehouse/config/colors.dart';
import 'package:whitehouse/screen/CustomAppBar.dart';
import 'package:whitehouse/screen/pair_add.dart';
import 'package:whitehouse/widget/navigaton_drawer_widget.dart';

import '../widget/input_field.dart';

class BudgetCreate extends StatefulWidget {
  const BudgetCreate({Key key}) : super(key: key);

  @override
  State<BudgetCreate> createState() => _BudgetCreateState();
}

class _BudgetCreateState extends State<BudgetCreate> {

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: NavigationDrawerWidget(),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Create  a new budget",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              SizedBox(height: screenHeight*0.03,),
              MyInputField(title: "Catergory", hint: "Food Item",),
              SizedBox(height: screenHeight*0.01,),
              MyInputField(title: "Amount", hint: "Rs. 1000",),
              SizedBox(height: screenHeight*0.01,),
              MyInputField(title: "Members", hint: "-------------",),
              SizedBox(height: screenHeight*0.02,),
              Row(
                children: [
                  Text(
                    "Add a pair",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Colors.black
                    ),
                  ),
                  SizedBox(width: screenWidth*0.1,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (builder)=>PairAdd()));
                    },
                    child: Icon(
                        Icons.join_full_outlined,
                      color: Colors.green,
                      size: 40.0,
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight*0.02,),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){},
                      child: Container(
                        height: 60,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                         color: Colrs.primaryColor,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Text(
                          "Create",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
