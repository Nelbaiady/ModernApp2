import 'package:flutter/material.dart';
import 'SignIn.dart';

class Startscreen extends StatefulWidget {
  const Startscreen({super.key});

  @override
  State<Startscreen> createState() => _StartscreenState();
}

class _StartscreenState extends State<Startscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
              center: Alignment.centerLeft -Alignment(0,0.4),
              colors: [Color(0xBF4FE4FF),Colors.white],
              radius: 1,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: RadialGradient(
              center: Alignment.centerRight-Alignment(0,0.1),
              colors: [Color(0x7D9021FF),Colors.transparent],
              radius: 1,
              stops: [0.3,0.8]
              // Text('Hello Gradient!', style: TextStyle(fontSize: 48.0, fontWeight: FontWeight.bold, color: Colors.black87,),),
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                SizedBox(height: 50,),
                Text("Welcome to Nayer's To-Do List Registration App", style: TextStyle(fontSize: 45, color: Colors.black87),),
                SizedBox(height: 10,),
                Text("Press Start to get started.", style: TextStyle(fontSize: 20, color: Colors.black54, fontFamily: 'Roboto'),),
                SizedBox(height: 50,),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    ElevatedButton(
                      onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Signin()));
                      },
                      child: Text("Start",style: TextStyle(color: Colors.black87,fontSize: 20),),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10), // <-- Radius
                        ),
                        elevation: 5,
                        padding: EdgeInsets.fromLTRB(70, 10, 70, 10),
                      ),
                    ),
                  ],),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Signin()));
                      },
                        child: Text("Create Account", style: TextStyle(fontSize: 15, color: Colors.black54, decoration: TextDecoration.underline,),),)
                    ],
                  ),
              ],),
            ),
          ),
        ),
      ),),
    );
  }
}
