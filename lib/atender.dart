import 'package:flutter/material.dart';

class AtenderPage extends StatefulWidget {
  const AtenderPage({ Key key }) : super(key: key);
  @override
  Atender createState() => Atender();
}

class Atender extends State<AtenderPage> with SingleTickerProviderStateMixin {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body:
          new Container(
            child:
              new Text(
              "Atender",
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
