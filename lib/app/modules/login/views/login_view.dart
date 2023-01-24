// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:troli_gsc/app/routes/app_pages.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F3DD),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            SizedBox(height: 20),
            Container(
              alignment: Alignment.center,
              height: 150,
              child: Image.asset(
                "assets/logo/tekssignup.png",
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(
                suffixIcon: new Icon(Icons.email),
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(width: 2)),
                labelText: 'Email',
              ),
            ),
            SizedBox(height: 10),
            TextField(
                obscureText: _isObscure,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(width: 2)),
                    labelText: 'Password',
                    suffixIcon: IconButton(
                        icon: Icon(_isObscure
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {}))),
            Row(
              children: [
                // Checkbox(
                //     value: controller.checkC.value,
                //     onChanged: (value) => controller.checkC.toggle()),
                Text("Remember me"),
                SizedBox(width: 100),
                Text(
                  "Forgot Password",
                  textAlign: TextAlign.right,
                )
              ],
            ),
            Container(
              width: 60,
              child: ElevatedButton(
                onPressed: () => Get.offAllNamed(Routes.HOME),
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(15.0)),
                  primary: Color(0xFF384E20),
                  padding: EdgeInsets.symmetric(vertical: 20),
                ),
              ),
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 5),
                    height: 1,
                    color: Colors.black,
                  ),
                ),
                Text("Or Continue With", style: TextStyle(fontSize: 15)),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 5),
                    height: 1,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Container(
              height: 60,
              child: ElevatedButton(
                onPressed: () => Get.offAllNamed(Routes.HOME),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Image.asset(
                    "assets/logo/facebook.png",
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Sign up with Facebook",
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 16,
                      ))
                ]),
                style: ElevatedButton.styleFrom(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(15.0)),
                  primary: Color.fromARGB(255, 255, 255, 255),
                  padding: EdgeInsets.symmetric(vertical: 20),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 60,
              child: ElevatedButton(
                onPressed: () => Get.offAllNamed(Routes.HOME),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Image.asset("assets/logo/google.png"),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Sign up with Google",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 16,
                      ))
                ]),
                style: ElevatedButton.styleFrom(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(15.0)),
                  primary: Color.fromARGB(255, 255, 255, 255),
                  padding: EdgeInsets.symmetric(vertical: 20),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 60,
              child: ElevatedButton(
                onPressed: () => Get.offAllNamed(Routes.HOME),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Image.asset("assets/logo/apple.png"),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Sign up with Apple",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 16,
                      ))
                ]),
                style: ElevatedButton.styleFrom(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(15.0)),
                  primary: Color.fromARGB(255, 255, 255, 255),
                  padding: EdgeInsets.symmetric(vertical: 20),
                ),
              ),
            ),
            SizedBox(height: 30),
            Text(
              "Already have an account? Log in",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
