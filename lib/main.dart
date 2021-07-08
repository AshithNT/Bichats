import 'dart:async';
import 'dart:io';

import 'package:bichats/LoginScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Greeting(),
    ),
  );

  /* Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Login()),
  );*/
}

/*class Welcome extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Center(
        child: Image(
          image: AssetImage('images/logo.png'),
        ),
        // Navigator.pushNamed(context, Login);
      ),
    );
  }
//  await Future.delayed(const Duration(seconds: 2), (){});
  // sleep(new Duration(seconds: 3));

}*/
class Greeting extends StatefulWidget {
  @override
  _GreetingState createState() => new _GreetingState();
}

class _GreetingState extends State<Greeting> {
  @override
  initState() {
    super.initState();
    new Timer(const Duration(seconds: 1), onClose);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.black54,
      body: Center(
        child: Image(
          image: AssetImage('images/logo.png'),
        ),
      ),
    );
  }

  void onClose() {
    Navigator.of(context).pushReplacement(new PageRouteBuilder(
        maintainState: true,
        opaque: true,
        pageBuilder: (context, _, __) => new Login(),
        transitionDuration: const Duration(seconds: 1),
        transitionsBuilder: (context, anim1, anim2, child) {
          return new FadeTransition(
            child: child,
            opacity: anim1,
          );
        }));
  }
}
