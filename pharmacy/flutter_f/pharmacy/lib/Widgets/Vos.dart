import 'package:flutter/material.dart';
class Vos extends StatelessWidget{
  @override
  Widget build (BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.only(left: 10,right: 10,top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Medicines",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent.shade100,
                ),
              ),
              Text("see all",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              )
            ],
          ),

        ),
        GridView.count(
          padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          physics: NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
          childAspectRatio: 0.8,
          shrinkWrap: true,
          children: [
            for(int n=5;n< 10;n++)
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    color: Color(0xFF009EA3),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color:Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 8,

                      ),

                    ]
                ),
                child: Column(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, "ItemPage");
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        child: Image.asset("images/$n.png",
                          height: 110,
                          width: 110,
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 8),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text("medicine",
                          style: TextStyle(fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,

                          ),
                        ),
                      ),


                    ),
                    Padding(padding: EdgeInsets.only(bottom: 8),
                      child: Text("90 pits",
                        style: TextStyle(fontSize: 14
                          ,fontWeight: FontWeight.bold
                          ,color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        children: [
                          Text("\$20",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,

                            ),

                          ),
                          InkWell(onTap: (){

                          },
                            child: Container(
                              padding: EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                  color: Color(0xD7F1AA13),
                                  borderRadius: BorderRadius.circular(8)
                              ),
                              child: Icon(
                                Icons.wine_bar,
                                color: Colors.white,
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


        )
      ],

    );
  }
}
