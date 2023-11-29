import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widgets/BottomBar.dart';


class ItemPage extends StatelessWidget{
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF009EA3),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(

            children: [
              Container(
                padding: EdgeInsets.all(15),
                height: 350,
                width: double.infinity,
                alignment: Alignment.topLeft,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/6.png",)

                    )
                ),
                child: InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    size: 30,
                    color: Color(0xD7F1AA13),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color:  Colors.redAccent.shade100,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("medcine",
                      style: TextStyle(color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold

                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),



                          ),
                          child: Icon(
                              CupertinoIcons.plus
                          ),
                        ),
                        Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),



                            ),
                            child: Icon(
                                CupertinoIcons.minus)
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.star,
                          color: Colors.amber,
                          size: 30,

                        ),
                        Text("4.8(120)",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                          ),

                        )
                      ],
                    ),
                    Padding(padding:EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Description",
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text("This medicine is for the treatment of diabetes.. We wish you recovery",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                            ),
                            textAlign: TextAlign.justify,
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [Text("Delvery time",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),


                      ),
                        Spacer(),
                        Icon(CupertinoIcons.clock,color: Colors.white,
                        ),
                        SizedBox(width: 5,),
                        Text("20 Minutes",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    )


                  ],
                ),
              )
            ],
          ),
        ),
      ),
     // bottomNavigationBar: BottomBar(),
      bottomNavigationBar: BottomBar(),
    );
  }
}