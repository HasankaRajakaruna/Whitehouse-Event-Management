import 'package:flutter/material.dart';

import '../widget/input_field.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidght = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: screenHeight,
        width: screenWidght,
        child: Stack(
          children: [
            topImage(screenHeight:screenHeight,screenWidght:screenWidght),
            bottomImage(screenHeight:screenHeight,screenWidght:screenWidght),
            middleText(screenHeight:screenHeight,screenWidght:screenWidght),
            inputSection(screenHeight:screenHeight,screenWidght:screenWidght),
          ],
        ),
      ),
    );
  }

  topImage({double screenHeight, double screenWidght}) {
    return Positioned(
      right: 0,
        top: 0,
        child: Image.asset(
          "assets/Images/forgetpassword_top.png",
          width: screenWidght*0.6,
        ),
    );
  }

  bottomImage({double screenHeight, double screenWidght}) {
    return Positioned(
      left: 0,
      bottom: 0,
      child: Image.asset(
        "assets/Images/forgetpassword_bottom.png",
        width: screenWidght*0.6,
      ),
    );
  }

  middleText({double screenHeight, double screenWidght}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      margin: EdgeInsets.only(top: screenHeight*0.13),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Change Current Password",
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 28,
              color: Colors.green
            ),
          ),
        ],
      ),
    );
  }

  inputSection({double screenHeight, double screenWidght}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      margin: EdgeInsets.only(top: screenHeight*0.4),
      child: SingleChildScrollView(
        child: Column(
          children: [
            MyInputField(title: "Email Address", hint: "Enter your email address",),
            SizedBox(height: screenHeight*0.02,),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    child: Text(
                      "Submit",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white
                      ),
                    ),
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF00b68f),
                      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
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
