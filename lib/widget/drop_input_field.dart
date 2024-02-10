import 'package:flutter/material.dart';
import 'package:whitehouse/config/colors.dart';

class DropDownIputField extends StatefulWidget {
  final String title;
  final Widget widget;
  const DropDownIputField({Key key,
    this.title,
    this.widget,
  }) : super(key: key);

  @override
  State<DropDownIputField> createState() => _DropDownIputFieldState();
}

class _DropDownIputFieldState extends State<DropDownIputField> {

  @override
  Widget build(BuildContext context) {

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
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
                  child: widget,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) {
    return DropdownMenuItem(
        child: Text(
          item,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0
          ),
        ),
    );
  }
}