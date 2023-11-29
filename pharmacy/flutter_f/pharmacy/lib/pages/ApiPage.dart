import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
class ApiPage extends StatefulWidget {
  const ApiPage({Key? key}) : super (key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }


}

  @override


class ApiPages extends State<ApiPage> {

  String? name;
  int? age;
  String? country;
  getDataFromApi() async {
    Response respons = await Dio().get("https://run.mocky.io/v3/d5addfe2-ba24-4352-9855-097f7d0d23cd");
    name = respons.data["name"];
    age = respons.data["age"];

    country = respons.data["country"];
    print (age);
  }
  @override
  Widget build (BuildContext context) {
    return Scaffold (
        body: SafeArea (
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
              Text ("Name"),
          SizedBox (
            height: 10,
          ),
          Text("Age"),
          SizedBox(
            height: 10,),
          Text("Country"
          ),
          SizedBox (
          height: 10,
        ),
        ElevatedButton(
        onPressed: (){
      getDataFromApi();
    },


            child: Text("Get data"),)
  ],
  ),
  ),

);
}
}