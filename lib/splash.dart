import 'package:flutter/material.dart';
import 'landing.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    nextPage();
  }

  nextPage() async {
    await Future.delayed(Duration(milliseconds: 2500), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LandingPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[400],
      body: SafeArea(
          child:Center(
               child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                          Hero(
                             tag:'logo',
                            child: CircleAvatar(
                                radius: 100,
                                backgroundImage: AssetImage('images/qlogo.jpg'),
                                                   ),
                          ),],),
               
              )),
            );
  }
}