import 'dart:ui';

import 'package:flutter/material.dart';

class Page2 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _MySecondPageState();
}



class _MySecondPageState extends State<Page2> {
  // String fileName = 'assets/profil_pic.png';
  TextEditingController controllerUsername = TextEditingController (text: "aim2u");
  TextEditingController controller1 = TextEditingController (text: "Aldi Irsan Majid");
  TextEditingController controllerEmail = TextEditingController (text: "aldiirsanmajid@gmail.com");
  TextEditingController controllerBio = TextEditingController (text: "Siswa Mentoring Udacoding");
  TextEditingController controllerStackUsername = TextEditingController (text: "aim2u");
  TextEditingController controllerLocation = TextEditingController (text: "Depok");
  bool value1 = false;
  bool checkBoxMentorValue = false;
  bool checkBoxMenteeValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text("Second Page"),),
      body: Container(
        margin: EdgeInsets.all(16),
        padding: EdgeInsets.all(8),
        child: Center(child:
        Column(children: [
          // Image.asset(
          //   'assets/profil_pic.png',
          //   height: 250.0,
          //   fit: BoxFit.cover,
          // ),
          Container(
            margin: EdgeInsets.only(top: 20.0),
            width: 125,
            height: 125,
            decoration: BoxDecoration(
                color: Colors.purple[900],
                borderRadius: BorderRadius.circular(100.0)
            ),
          ),
          // Image(image: AssetImage('assets/profil_pic.png'),),
          Text("Aldi Irsan Majid"),
          TextField(
            controller: controllerUsername,
            decoration: InputDecoration(
              labelText: "Username"
            ),
          ),
          TextField(
              controller: controllerEmail,
              decoration: InputDecoration(
                  labelText: "Email"
              ),
          ),
          Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Text('Available to be mentor',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.0
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Checkbox(
                        value: this.checkBoxMentorValue,
                        onChanged: (newValue) {
                          setState(() {
                            this.checkBoxMentorValue = newValue;
                          });
                        }
                    ),
                  ),
                ]
            ),
          ),
          Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Text('Needs Mentoring',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.0
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Checkbox(
                        value: this.checkBoxMenteeValue,
                        onChanged: (newValue) {
                          setState(() {
                            this.checkBoxMenteeValue = newValue;
                          });
                        }
                    ),
                  ),
                ]
            ),
          ),
          TextField(
            controller: controllerBio,
            decoration: InputDecoration(
                labelText: "Bio"
            ),
          ),
          TextField(
            controller: controllerUsername,
            decoration: InputDecoration(
                labelText: "Stack Username"
            ),
          ),
          TextField(
            controller: controllerLocation,
            decoration: InputDecoration(
                labelText: "Location"
            ),
          ),
        ],)
          ,),),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}