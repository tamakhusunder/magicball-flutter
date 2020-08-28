import 'package:flutter/material.dart';
import 'dart:math';


void main(){
  runApp(MaterialApp(
    title: 'the ball',
    theme: ThemeData.dark(),
    home:MyApp(),
  ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int ballnum=1;

  void change_ball(){
    setState(() {
      ballnum= Random().nextInt(5)+1;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Magic ball'),
        centerTitle: false,
        backgroundColor: Colors.yellow.shade800,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.only(top: 20.0),
                child: Text('Imagine Y/N question',textAlign: TextAlign.center,style: TextStyle(color: Colors.black87),),
              ),
            ),
            Expanded(
              flex: 10,
              child: FlatButton(
                onPressed: (){
                  change_ball();
                  print('Number is $ballnum');
                  },
                child: Image.asset('images/ball$ballnum.png',width: 350,height: 400,),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 60,
        padding: EdgeInsets.all(20.0),
        color: Colors.black45,
        child: Text(
          'Touch the ball',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      backgroundColor: Colors.yellow,
    );
  }
}


