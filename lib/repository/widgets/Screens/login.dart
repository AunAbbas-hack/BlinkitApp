import 'package:flutter/material.dart';
import 'package:untitled2/repository/widgets/ui_helper/assets_image.dart';

import 'home_screen.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // UiHelper.customImage(img: "assets/images/Onboarding.png"),
              Image.asset("assets/images/Onboarding.png"),
              SizedBox(height: 30), Image.asset("assets/images/image 10.png"),
              SizedBox(height: 20),
              UiHelper.customText(
                text: "Pakistan's last minute app",
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: "bold",
              ),
              SizedBox(height: 20),
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  height: 200,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 20),
                      SizedBox(
                        height: 48,
                        width: 295,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0XFFE23744),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                UiHelper.customText(
                                  text: "Login with",
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "bold",
                                ),
                                SizedBox(width: 5,),
                                Image.asset("assets/images/image 9.png"),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      UiHelper.customText(
                        text:
                            "Access your saved addresses from Zomato automatically!",
                        color: Color(0Xff9C9C9C),
                        fontSize: 10,
                        fontWeight: FontWeight.normal,
                        fontFamily: "Regular",
                      ),
                      SizedBox(height: 20),
                      UiHelper.customText(
                        text: "or login with phone number",
                        color: Color(0Xff269237),
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        fontFamily: "Regular",
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      // OutlinedButton(onPressed: (){}, child: Text("Login with Zomato")
      // ,),
    );
  }
}
