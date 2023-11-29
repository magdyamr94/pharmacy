import 'package:flutter/material.dart';
class BottomBar extends StatelessWidget{
  @override
  Widget build (BuildContext context) {
    return BottomAppBar(
        child:Container(
          height: 50,
          padding: EdgeInsets.symmetric(horizontal: 50),
          decoration: BoxDecoration(
            color: Color(0xFF009EA3),
          ),
          child: Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children: [
              Text("\$150",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Color(0xD7F1AA13)),)
            ],
          ),
        )
    );
  }
}