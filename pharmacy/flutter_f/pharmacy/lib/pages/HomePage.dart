import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../Widgets/CategoriesWidget.dart';
import '../Widgets/Vos.dart';
class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
          Container(
          padding: EdgeInsets.only(right: 20,left: 15,top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Icon(
            Icons.menu,
            color: Color(0xFF009EA3),
            size: 30,
          )
          ,Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Color(0xFF009EA3),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.5),
                  blurRadius: 2,
                )
              ]
          ),
            child  :Badge(
              badgeColor: Colors.red,
              padding: EdgeInsets.all(7),
              badgeContent: Text("3"
                ,style: TextStyle(
                  color: Colors.white,
                ),),
                child: InkWell(
                onTap: (){}
                 , child: Icon(
                  CupertinoIcons.bell_circle_fill,
                  size: 30,
                  color: Colors.white,
            )
                )
            )
              ) ],
          ),
        ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Welcome",
                      style: TextStyle(
                          fontSize: 35,
                          color: Color(0xFF009EA3)
                        ,  fontWeight: FontWeight.bold
                      ),

                    ),
                    Text("How can I Help you!?"
                      ,style: TextStyle(color: Colors.redAccent.shade100,
                          fontSize: 20),
                    )
                  ],
                ),

              ),
              //search
              Container(
                margin: EdgeInsets.all(15),
                padding: EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                decoration: BoxDecoration(
                    color: Color(0xD7F1AA13),
                    borderRadius: BorderRadius.circular(20)
                ),
                child:Row(
                  children: [
                    Icon(Icons.search,
                      color: Color(0xFF009EA3),

                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      width: 250,

                      child: TextFormField(
                        decoration: InputDecoration(

                          border: InputBorder.none,
                        ),),
                    ),
                    Spacer(),
                    Icon(Icons.filter_list,
                      color: Color(0xFF009EA3),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CategoriesWidget(),
                    Vos(),
                    

                  ],
                ),

              )
            ],

    )
    )
  )
    );
  }
}
