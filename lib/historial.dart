import 'package:flutter/material.dart';

class HistorialPage extends StatefulWidget {
  const HistorialPage({ Key key }) : super(key: key);
  @override
  Historial createState() => Historial();
}

class Historial extends State<HistorialPage> with SingleTickerProviderStateMixin {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body:
          new Container(
            child:
              new Text(
              "Historial",
                style: style.copyWith(fontSize:12.0,
                color: const Color(0xFF000000),
                fontWeight: FontWeight.w200,),
              ),
    
            padding: const EdgeInsets.all(0.0),
            alignment: Alignment.center,
          ),
    
      );
  }
}
