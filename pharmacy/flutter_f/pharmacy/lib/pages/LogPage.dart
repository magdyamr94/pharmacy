import 'package:flutter/material.dart';
class LogPage extends StatelessWidget{
  @override
  Widget build (BuildContext context) {
    return  Scaffold(
      backgroundColor:Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/mm.png',height: 150,

              ),
              SizedBox(height: 20,),
              Text('SIGN IN',
                  style: TextStyle(
                    fontSize: 40,
                  )

              ),
              Text('welecom back nice to see you again :)',
                style: TextStyle(
                    fontSize: 18
                ),

              ),
              SizedBox(height: 50,

              ),
              Padding(padding:const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xFF04B5BA),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(

                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "email",
                      ),
                    ),
                  ),

                ),
              ),
              SizedBox(height: 30,

              ),
              Padding(padding:const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xFF04B5BA),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "password",

                      ),
                    ),
                  ),

                ),
              ),
              SizedBox(height: 15,),

              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, "ApiPage");
                },
                child: Ink(
                  padding: EdgeInsets.symmetric(horizontal: 80,vertical: 16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                    color:  Colors.redAccent.shade100,
                  ),
                  child: Text("SIGN IN",
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
      ),

    );
  }
}