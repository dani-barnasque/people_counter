import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "contador de pessoas",
    home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  int _people = 0;
  String _infoText = "Pode Entrar";

  void _changePeople(int delta){
    setState(() {
    _people += delta; 

    if (_people < 0) {
      _infoText="Mundo Invertido!";
    } else if(_people <= 10) {
      _infoText="Pode Entrar!";
    } else {
      _infoText="Lotado";
    }
    });
  }
  
  @override

  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "images/restaurant.jpeg",
          fit: BoxFit.cover,
          height: 1000.00,
          ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Text("Pessoas: $_people",
         style: TextStyle(
           color: Colors.orange, 
           fontWeight: FontWeight.bold),
        ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            Padding(
             padding: EdgeInsets.all(10.0),
             child:FlatButton(
              onPressed: () {_changePeople(1);}, 
              child: Text("+1", 
                style: TextStyle( 
                  color: Colors.orange, 
                  fontSize: 40.0),)),
             ),
            Padding(
             padding: EdgeInsets.all(10.0),
             child: FlatButton(
            onPressed: () {if (_people>0) {
              _changePeople(-1);
            } else {
            } _changePeople(0);}, 
             child: Text("-1", 
              style: TextStyle( 
              color: Colors.orange, 
              fontSize: 40.0),)), 
           )
         ]
         ),
        Text(_infoText,
         style: TextStyle(
           color: Colors.orange, 
           fontStyle: FontStyle.italic, 
           fontSize: 30.0),
        )
      ]
    )
      ],);
  }
}