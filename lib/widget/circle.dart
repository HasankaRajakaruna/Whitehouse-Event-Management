import 'package:flutter/material.dart';

class Circle extends StatelessWidget {
  const Circle({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 12,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                width: 1.0,
                color: Colors.white
              )
            ),
          ),
          SizedBox(height: 1,),
          Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    width: 1.0,
                    color: Colors.white
                )
            ),
          ),
          SizedBox(height: 1,),
          Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    width: 1.0,
                    color: Colors.white
                )
            ),
          ),
        ],
      ),
    );
  }
}
