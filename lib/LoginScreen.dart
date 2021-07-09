import 'package:bichats/widgets/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Login extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        backgroundColor: Color(0xff3a3a3a),
        title: Text(('Bichats')),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height - 50,
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 28),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 50,
                ),
                Image.asset(
                  "images/logo.png",
                  height: 200,
                  width: 200,
                ),
                SizedBox(
                  height: 100,
                ),
                TextField(
                  textAlign: TextAlign.center,
                  style: SimpleText(),
                  decoration: textFieldInputDecoration("Email / Phone"),
                ),
                TextField(
                  textAlign: TextAlign.center,
                  style: SimpleText(),
                  decoration: textFieldInputDecoration("Password"),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        const Color(0xff3a3a3a),
                        const Color(0xff242424)
                      ]),
                      borderRadius: BorderRadius.circular(30)),
                  child: Text(
                    "Sign in",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                /* Container(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Text(
                      "Sign up",
                      style: SimpleText(),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Text(
                      "Forgot Password",
                      style: SimpleText(),
                    ),
                  ),
                ),*/
                /* Container(
                  child: Text("Sign in",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      )),
                )*/
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Forgot Password!",
                      style: SimpleText(),
                    ),
                    SizedBox(
                      width: 150,
                    ),
                    Text(
                      "Register",
                      style: SimpleText(),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
