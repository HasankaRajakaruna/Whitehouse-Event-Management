import 'package:flutter/material.dart';
import 'package:whitehouse/config/colors.dart';
import 'package:whitehouse/screen/CustomAppBar.dart';
import 'package:whitehouse/widget/drop_input_field.dart';
import 'package:whitehouse/widget/navigaton_drawer_widget.dart';

import '../Firebase/firebase_api.dart';
import '../widget/input_field.dart';

class PairAdd extends StatefulWidget {
  const PairAdd({Key key}) : super(key: key);

  @override
  State<PairAdd> createState() => _PairAddState();
}

class _PairAddState extends State<PairAdd> {

  List<String> repeatList = [
    "Kalana",
    "Isuru",
    "Ruchira",
    "Sanjula"
  ];
  String sender = null;
  String receiver = null;
  int salary = 1000;

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
                  "Create a pair",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              SizedBox(height: screenHeight*0.03,),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sender",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.black
                      ),
                    ),
                    Container(
                      height: 50,
                      padding: const EdgeInsets.only(left: 15,right: 15),
                      margin: const EdgeInsets.only(top: 5.0,bottom: 10.0),
                      decoration: BoxDecoration(
                          border:Border.all(
                            width: 2.0,
                            color: Colrs.primaryColor,
                          ),
                          borderRadius: BorderRadius.circular(12)
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: DropdownButton<String>(
                              value: sender,
                              items: repeatList.map<DropdownMenuItem<String>>((String value){
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value,style: TextStyle(color: Colors.grey),),
                                );
                              }).toList(),
                              isExpanded: true,
                              menuMaxHeight: 150,
                              iconSize: 30,
                              icon: Icon(Icons.arrow_drop_down,color: Colors.black,),
                              onChanged: (value){
                                setState(() {
                                  sender = value;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight*0.01,),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Receiver",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.black
                      ),
                    ),
                    Container(
                      height: 50,
                      padding: const EdgeInsets.only(left: 15,right: 15),
                      margin: const EdgeInsets.only(top: 5.0,bottom: 10.0),
                      decoration: BoxDecoration(
                          border:Border.all(
                            width: 2.0,
                            color: Colrs.primaryColor,
                          ),
                          borderRadius: BorderRadius.circular(12)
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: DropdownButton<String>(
                              value: receiver,
                              items: repeatList.map<DropdownMenuItem<String>>((String value){
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value,style: TextStyle(color: Colors.grey),),
                                );
                              }).toList(),
                              isExpanded: true,
                              menuMaxHeight: 150,
                              iconSize: 30,
                              icon: Icon(Icons.arrow_drop_down,color: Colors.black,),
                              onChanged: (value){
                                setState(() {
                                  receiver = value;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight*0.02,),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        if(sender !="None" || receiver!="None"){
                          FirebaseApi().savePair(context,sender,receiver,salary);
                        }
                      },
                      child: Container(
                        height: 60,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colrs.primaryColor,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Text(
                          "Add",
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
              SizedBox(height: screenHeight*0.03,),
              Container(
                height: 70,
                padding: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  border: Border(
                    left: BorderSide(
                      color: Colrs.secondaryColor,
                      width: 10.0,
                    ),
                    right: BorderSide(
                      color: Colrs.secondaryColor,
                      width: 1.0,
                    ),
                    top: BorderSide(
                      color: Colrs.secondaryColor,
                      width: 1.0,
                    ),
                    bottom: BorderSide(
                      color: Colrs.secondaryColor,
                      width: 1.0,
                    ),
                  )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Hasanka',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.black87
                      ),
                    ),
                    Text(
                      'Hasanka',
                      style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.black87
                      ),
                    ),
                    GestureDetector(
                      onTap: (){},
                      child: Icon(
                        Icons.delete_forever_outlined,
                        color: Colors.red,
                        size: 40.0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


}
