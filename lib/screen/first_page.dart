import 'package:flutter/material.dart';
import 'package:whitehouse/screen/loginscreen.dart';
import 'package:whitehouse/screen/signupscreen.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: screenHeight,
        width: screenWidth,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 0,
              left: 0,
              child:Image.asset(
                'assets/Images/startpage_top.png',
              ),
              width: screenWidth*0.8,
            ),
            Positioned(
              top: 0,
              left: 0,
              child:Container(
                padding: const EdgeInsets.only(left: 30.0,top: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Whitehouse",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontWeight: FontWeight.w900
                      ),
                    ),
                    SizedBox(height: screenHeight*0.01,),
                    Text(
                      "Let's manage our work",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.normal
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child:Image.asset(
                'assets/Images/intropage_bottom.png',
              ),
              width: screenWidth*0.4,
            ),
            Container(
              margin: EdgeInsets.only(top: screenHeight*0.3),
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                children: [
                  Image(
                    image: AssetImage(
                      "assets/Images/startpage_image.png",
                    ),
                    width: screenWidth*0.6,
                  ),
                  SizedBox(height: screenHeight*0.02,),
                  Text(
                    "Start Now",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w900
                    ),
                  ),
                  SizedBox(height: screenHeight*0.01,),
                  Text(
                    "It allows the user to create, manage and "
                        "work with better features to make their life eazier",
                    style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 18.0,
                    ),
                  ),
                  SizedBox(height: screenHeight*0.02,),
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (builder)=>SignUpScreen()));
                          },
                          child: Container(
                            height: 60,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Color(0xFF00b68f),
                                    Color(0xFF00b68f)
                                  ]
                              ),
                            ),
                            child: Text(
                              "Create An Account",
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
                  SizedBox(height: screenHeight*0.02,),
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (builder)=>SignInScreen()));
                          },
                          child: Container(
                            height: 60,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2.0,
                                color: Color(0xFF00b68f)
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
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
