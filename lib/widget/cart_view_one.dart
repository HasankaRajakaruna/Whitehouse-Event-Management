import 'package:flutter/material.dart';
import 'package:whitehouse/config/colors.dart';

import '../Data/list_itemsData.dart';
import '../Model/list_Item.dart';
import 'circle.dart';
import 'list_item_widget.dart';

class CartViewOne extends StatefulWidget {
  const CartViewOne({Key key}) : super(key: key);

  @override
  State<CartViewOne> createState() => _CartViewOneState();
}

class _CartViewOneState extends State<CartViewOne> {

  final List<ListItem> items = List.from(listItems);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 100,
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(
                  color: Colrs.gradientPink,
                  width: 10.0,
                ),
                right: BorderSide(
                  color: Colrs.gradientPink,
                  width: 2.0,
                ),
                top: BorderSide(
                  color: Colrs.gradientPink,
                  width: 2.0,
                ),
                bottom: BorderSide(
                  color: Colrs.gradientPink,
                  width: 2.0,
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Food Cost",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.w700
                    ),),
                    Divider(
                      thickness: 2,
                      height: 1.0,
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Text("Rs: ",style: TextStyle(fontSize: 20,color: Colors.black),),
                        Text("7500",style: TextStyle(fontSize: 20,color: Colors.black),),
                      ],
                    ),
                  ],
                ),
                Container(
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: (){},
                        child: Icon(
                          Icons.update_rounded,
                          size: 40.0,
                          color: Colrs.gradientPink,
                        ),
                      ),
                      SizedBox(width: 20.0,),
                      GestureDetector(
                        onTap: (){},
                        child: Icon(
                          Icons.delete_forever_outlined,
                          size: 40.0,
                          color: Colrs.gradientPink,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
