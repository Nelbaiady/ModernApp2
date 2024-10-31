import 'package:flutter/material.dart';


class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/WavyBG.png',),fit: BoxFit.cover)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Log In to the Silly Website", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.purpleAccent,),),
            SizedBox(height: 20,),
            Text("Welcome. Fill in the below fields to sign in to your account.",textAlign: TextAlign.center,),
            SizedBox(height: 50,),
            Container(
              width: MediaQuery.sizeOf(context).width-50,
              padding: EdgeInsets.fromLTRB(10, 10, 10, 20),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 1,color: Colors.transparent),
                borderRadius: BorderRadius.circular(10),
              ),
              child: SizedBox(
                height: 30,
                child: TextField(
                  controller: emailController,
                  decoration:InputDecoration(
                    isDense: true,
                    contentPadding: EdgeInsets.fromLTRB(0, -10, 0, 10),
                    labelText: 'Email',
                    filled: true,
                    fillColor: Colors.white,
                    ),
                  ),
              ),
            ),

            SizedBox(height: 10,),
            Container(
              width: MediaQuery.sizeOf(context).width-50,
              padding: EdgeInsets.fromLTRB(10, 10, 10, 20),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 1,color: Colors.transparent),
                borderRadius: BorderRadius.circular(10),
              ),
              child: SizedBox(
                height: 30,
                child: TextField(
                  controller: passwordController,
                  decoration:InputDecoration(
                    isDense: true,
                    contentPadding:
                    EdgeInsets.fromLTRB(0, -10, 0, 10),
                    labelText: 'Password',
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){
                if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty)
                  {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Signin()));
                    print("Moving to next page now");
                  }
              },
              child: Text("Login",style: TextStyle(color: Colors.black87,fontSize: 20,fontWeight: FontWeight.bold),),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // <-- Radius
                ),
                elevation: 5,
                padding: EdgeInsets.fromLTRB(70, 10, 70, 10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
