import 'package:flutter/material.dart';

class CartViewTwo extends StatefulWidget {
  const CartViewTwo({Key key}) : super(key: key);

  @override
  State<CartViewTwo> createState() => _CartViewTwoState();
}

class _CartViewTwoState extends State<CartViewTwo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("cartview two"),
    );
  }
}
