import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/tugas4/homescreen.dart';


class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  _Splashscreen createState() => _Splashscreen();
}

class _Splashscreen extends State<Splashscreen> {
  
  @override
  void initState(){
    super.initState();
    splashscreenStart();
  }

  splashscreenStart() async{
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.push(context,
      MaterialPageRoute(builder: (context) => const Home()),
      
      );
    });
  }

  @override
  Widget build (BuildContext context){

    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            
            const Icon(
              Icons.flutter_dash,
              size: 100.0,
              color: Colors.white,
            ),

            const SizedBox(height: 24.0,),

            const Text("INI SPLASHSCREEN",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
            
          ],
        ),
      ),
    );
  }

}