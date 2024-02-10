import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whitehouse/config/colors.dart';
import 'package:whitehouse/screen/CustomAppBar.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:whitehouse/screen/budget_create.dart';
import 'package:whitehouse/widget/navigaton_drawer_widget.dart';
import '../Data/list_itemsData.dart';
import '../Model/list_Item.dart';
import '../widget/circle.dart';
import '../widget/list_item_widget.dart';


class EventScreen extends StatefulWidget {
  const EventScreen({Key key}) : super(key: key);

  @override
  _EventScreenState createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {

  DateTime _selectedDate = DateTime.now();
  final List<ListItem> items = List.from(listItems);

  @override
  Widget build(BuildContext context) {

    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: CustomAppBar(),
      drawer: NavigationDrawerWidget(),
      body: Container(
        child: Column(
          children: [
            _addDateBar(),
            SizedBox(height: screenHeight*0.03,),
            _addBottomBar(screenHeight,screenWidth),
          ],
        ),
      ),
    );
  }

  _addDateBar() {
    return Container(
      margin: const EdgeInsets.only(left: 10,top: 20,right: 10),
      child: DatePicker(
        DateTime.now(),
        height: 100,
        width: 80,
        initialSelectedDate: DateTime.now(),
        selectionColor: Colrs.primaryColor,
        selectedTextColor: Colors.white,
        dateTextStyle: GoogleFonts.lato(
          textStyle:TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.grey,
          ),
        ),
        dayTextStyle: GoogleFonts.lato(
          textStyle:TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.grey,
          ),
        ),
        monthTextStyle: GoogleFonts.lato(
          textStyle:TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.grey,
          ),
        ),
        onDateChange: (date){
          _selectedDate = date;
        },
      ),
    );
  }

  _addBottomBar(double screenHeight,double screenWidth) {
    return Expanded(
        child: Container(
          width: screenWidth,
          padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.0),
              topLeft: Radius.circular(20.0),
            ),
            color: Colrs.primaryColor,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Create Budget",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),),
                  GestureDetector(
                    child: CircleAvatar(
                      radius: screenWidth*0.05,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.add,color: Colrs.primaryColor,size: screenWidth*0.1,),
                    ),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (builder)=>BudgetCreate()));
                    },
                  ),
                ],
              ),
              SizedBox(height: screenHeight*0.04,),
              Container(
                height: 100,
                margin: const EdgeInsets.all(8.0),
                padding: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Colrs.gradientPink,
                      Colrs.gradientViolent
                    ],
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Food Cost",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.w700
                        ),),
                        Divider(
                          thickness: 2,
                          height: 1.0,
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            Text("Rs: ",style: TextStyle(fontSize: 20,color: Colors.white),),
                            Text("7500",style: TextStyle(fontSize: 20,color: Colors.white),),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 130,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image:AssetImage("assets/Images/food1.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    GestureDetector(
                      child: Circle(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }
}
