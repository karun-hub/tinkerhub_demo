import 'package:demo/Login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen()
    );
  }
}
class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      width: 200,
                      child:
                      Image(image: AssetImage('assets/images/logo.png'))),
                  Text(
                    "Skip",
                    style:
                    TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Image(image: AssetImage("assets/images/img1.png")),
              SizedBox(
                height: 20,
              ),
              Text(
                "HELLO",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(

                height: 10,
              ),
              Container(

                // color: Colors.blueGrey,
                  width: 350,
                  child: Text("This is the app that allows you to dicover and read ebooks and magazines",
                    style: TextStyle(
                        fontFamily: 'Neonderthaw',
                        fontWeight: FontWeight.bold,
                        fontSize: 20


                    ),
                  )),
              SizedBox(

                height: 15,
              ),
              Container(
                height: 40,
                width: 200,
                child: RaisedButton(
                  onPressed: (){
                    print("object");
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => SingIn()));

                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                  color: Colors.black,
                  child: Text("Get Strated",style: TextStyle(color: Colors.white),),


                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

