import 'package:flutter/material.dart';
import 'package:task1_aldi_flutter_app/page2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Page1(),
    );
  }

}

class Page1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Page1> {
  bool checkBoxMentorValue = false;
  bool checkBoxMenteeValue = false;
  bool checkBoxAgreementValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Flutter"),
      ),
      body: Container(
        margin: EdgeInsets.all(16),
        padding: EdgeInsets.all(8),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Sign Up"),
              TextField(
                decoration: InputDecoration(hintText: "Name"),
              ),
              TextField(
                decoration: InputDecoration(hintText: "Username"),
              ),
              TextField(
                decoration: InputDecoration(hintText: "Email"),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter Password",
                ),
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Confirm Password",
                ),
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
              ),
              Text("Available to be a: "),
              // Center(
              //     child:
                  Column(
                      children: [
                        Row(children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Checkbox(
                                      value: this.checkBoxMentorValue,
                                      onChanged: (newValue) {
                                        setState(() {
                                          this.checkBoxMentorValue = newValue;
                                        });
                                      }),
                                  Container(
                                    width: 8.0,
                                  ),
                                  Text("Mentor")
                                ],
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Checkbox(
                                      value: this.checkBoxMenteeValue,
                                      onChanged: (newValue) {
                                        setState(() {
                                          this.checkBoxMenteeValue = newValue;
                                        });
                                      }),
                                  Container(
                                    width: 8.0,
                                  ),
                                  Text("Mentee")
                                ],
                              )
                            ],
                          ),



                        ],
                        )
                        ,Row(children: [
                          Center(child: Column(children: [
                            Row(
                              children: [
                                Checkbox(
                                    value: this.checkBoxAgreementValue,
                                    onChanged: (newValue) {
                                      setState(() {
                                        this.checkBoxAgreementValue = newValue;
                                      });
                                    }),
                                Container(
                                  width: 300,
                                  child: Text("I affirm that i have read and accept to be bound by the AnitaB.org Code of Conduct, Terms and Privacy Policy. Further, i consent to use of my information for the stated purpose"),
                                ),

                              ],
                            ),
                            Row(
                                children: [

                                ]),
                          ],),
                          )
                        ],)
                      ]),
              RaisedButton(
                child: Text('SIGN UP'),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context){
                          return Page2();
                        }
                    ),
                  );
                },
                color: Colors.blue,
                textColor: Colors.white,
              )
              // )
            ],
          ),
        ),
      ),
    );
  }
}

