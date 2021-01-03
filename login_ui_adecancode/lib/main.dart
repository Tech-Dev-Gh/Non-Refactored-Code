import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: LoginUI()));

class LoginUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final primaryColor = Color(4287980539);
    final textFieldColor = Color(4284365478);

    return Scaffold(
      backgroundColor: primaryColor,
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "LearnCode",
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontFamily: "Poppins",
              ),
            ),
            SizedBox(height: 40),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: textFieldColor,
                hintText: "Username",
                hintStyle: TextStyle(
                  color: Colors.white54,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Poppins",
                ),
                prefixIcon: Icon(
                  Icons.person_outline,
                  color: Colors.white,
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide.none),
              ),
            ),
            SizedBox(height: 25),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                filled: true,
                fillColor: textFieldColor,
                hintText: "Password",
                hintStyle: TextStyle(
                  color: Colors.white54,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Poppins",
                ),
                prefixIcon: Icon(
                  Icons.lock_outline,
                  color: Colors.white,
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide.none),
              ),
            ),
            SizedBox(height: 15),
            Align(
              alignment: Alignment.bottomRight,
              child: FlatButton(
                onPressed: () {},
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                    color: Colors.white60,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            RaisedButton(
              onPressed: () {},
              padding: EdgeInsets.symmetric(horizontal: 42, vertical: 13),
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                "Login",
                style: TextStyle(
                  color: primaryColor,
                  fontFamily: "Poppins",
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Expanded(
                  child: Divider(
                    thickness: 1.0,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    "or",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Expanded(
                  child: Divider(
                    thickness: 1.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            RaisedButton(
              onPressed: () {},
              padding: EdgeInsets.all(15),
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
              child: Row(
                children: [
                  Image.asset("assets/facebook.png", height: 20),
                  Container(
                    height: 30,
                    child: VerticalDivider(
                      thickness: 1.0,
                      color: Colors.blueGrey,
                      width: 30,
                    ),
                  ),
                  Text(
                    "Continue with Facebook",
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 15,
                      fontFamily: "Poppins",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            RaisedButton(
              onPressed: () {},
              padding: EdgeInsets.all(15),
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
              child: Row(
                children: [
                  Image.asset("assets/google.png", height: 20),
                  Container(
                    height: 30,
                    child: VerticalDivider(
                      thickness: 1.0,
                      color: Colors.blueGrey,
                      width: 30,
                    ),
                  ),
                  Text(
                    "Continue with Google",
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 15,
                      fontFamily: "Poppins",
                    ),
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
