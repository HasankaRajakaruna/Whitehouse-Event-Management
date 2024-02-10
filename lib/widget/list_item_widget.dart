import 'package:flutter/material.dart';
import 'package:whitehouse/config/colors.dart';
import 'package:whitehouse/widget/circle.dart';

import '../Model/list_Item.dart';

class ListItemWidget extends StatelessWidget {
  final ListItem item;
  final Animation<double> animation;
  final VoidCallback onClicked;

  const ListItemWidget({
    this.item,
    this.animation,
    this.onClicked,
    Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
            item.col1,
            item.col2
          ],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(item.title,style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.w700
              ),),
              Divider(
                thickness: 2,
                height: 1.0,
              ),
              SizedBox(height: 5,),
              Row(
                children: [
                  Text("Rs: ",style: TextStyle(fontSize: 20,color: Colors.white),),
                  Text(item.salary,style: TextStyle(fontSize: 20,color: Colors.white),),
                ],
              ),
            ],
          ),
          Container(
            height: 50,
            width: 130,
            decoration: BoxDecoration(
              image: DecorationImage(
                image:AssetImage(item.urlImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          GestureDetector(
            child: Circle(),
          ),
        ],
      ),
    );
  }
}

