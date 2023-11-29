import 'package:flutter/material.dart';
class CategoriesWidget extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10,right: 10,bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Services",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color:  Colors.redAccent.shade100,
                ),
              )
              ,Text("See ALL",
                style: TextStyle(
                    fontSize:15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),)
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for(int i=1;i<5; i++)
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFF009EA3),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 6,
                        )
                      ]

                  ),

                  child: Row(
                    children: [
                      Padding(padding:EdgeInsets.all(5),
                        child: Image(image: AssetImage('images/$i.png')
                          , height: 50,
                          width: 50,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(right: 5),
                        child: Text("Services",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                )
            ],
          ),
        )
      ],
    );
  }
}