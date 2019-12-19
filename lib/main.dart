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
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){},
              child: Image.asset(
                'images/ball1.png'
              ),),),
        ],
      ),
    );
  }
}