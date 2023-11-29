import 'package:flutter/material.dart';

class HiScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/mm.png"
              ,height: 300,),
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Text("Life Care",
                style: TextStyle(
                  color: Color(0xFF009EA3),
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
            ,SizedBox(height: 50,)
            , InkWell(
              onTap: (){
                Navigator.pushNamed(context, "HomePage");
              },
              child: Ink(
                padding: EdgeInsets.symmetric(horizontal: 80,vertical: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xFF009EA3)
                ),
                child: Text("Get Started",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),

                ),
              ),
            )
            ,SizedBox(height: 50,)
            , InkWell(
              onTap: (){
                Navigator.pushNamed(context, "LogPage");
              },
              child: Ink(
                padding: EdgeInsets.symmetric(horizontal: 80,vertical: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xFF009EA3)
                ),
                child: Text("LOGIN",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}