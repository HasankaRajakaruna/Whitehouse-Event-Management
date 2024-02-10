import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:whitehouse/FirebaseModels/pairs.dart';

class FirebaseApi{

  Future savePair(BuildContext context,String sender, String receiver,int salary) async{
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context)=>Center(child: CircularProgressIndicator(),),
    );

    try{
      final docUser = FirebaseFirestore.instance.collection('pairs').doc();

      final pair = Pair(
          sender:sender,
          reciever: receiver,
          salary: salary
      );

      final json = pair.toJson();
      await docUser.set(json);
      Navigator.of(context).popUntil((route)=>route.isCurrent);
    }on FirebaseAuthException catch(e){
      print(e);
      Navigator.of(context).pop();
    }

  }

}