import 'dart:math';

import 'package:flutter/material.dart';


void main ()=> runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: MagicBallPage(),
));

class MagicBallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
            'Magic Ball',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Pacifico-Regular',
            fontSize: 20.0
          ),
        ),
      ),
      backgroundColor: Colors.lightBlue,
      body: BallPage(),
    );
  }
}

class BallPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BallPageState();
  }
}

class _BallPageState extends State {

  int ballNumber = 1;

  void shufflingBall(){

    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                shufflingBall();
                print('Ball pressed');
              },
              child: Image.asset(
                'images/ball$ballNumber.png'
              ),
            ),
          ),
        ],
      ),
    );
  }
}