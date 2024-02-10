import 'package:flutter/material.dart';
import 'package:whitehouse/screen/signupscreen.dart';

import '../widget/input_field.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: h,
        width: w,
        child: Stack(
          children: [
            topImage(),
            bottomImage(screenWidth:w),
            signInSection(screenHeight:h),
            inputSection(screenHeight:h)

          ],
        ),
      ),
    );
  }

  Widget topImage() {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Image.asset(
        "assets/Images/loginpage_top.png",
      ),
    );
  }

  Widget bottomImage({double screenWidth}) {
    return Positioned(
      bottom: 0,
      left: 0,
      child: Image.asset(
        "assets/Images/loginpage_bottom.png",
        width: screenWidth * 0.4,
      ),
    );
  }

  signInSection({double screenHeight}) {
    return Container(
      margin:  EdgeInsets.only(top: screenHeight*0.05),
      padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Sign In",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white
            ),
          ),
          SizedBox(height: screenHeight*0.005,),
          Text(
            "Enter correct details",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.white
            ),
          ),
        ],
      ),
    );
  }

  Widget inputSection({double screenHeight}) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: screenHeight*0.3),
      padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 50.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            MyInputField(title: "Email Address", hint: "Enter your email address",),
            MyInputField(title: "Password", hint: "Enter your password",),
            SizedBox(height: screenHeight*0.02,),
            Container(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: (){},
                child: Text(
                  "Forget Password?",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight*0.02,),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    child: Text(
                      "Sign In",
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
            SizedBox(height: screenHeight*0.03,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Create An Account? ",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (builder)=>SignUpScreen()));
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF00b68f)
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


