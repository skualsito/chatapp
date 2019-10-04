import 'package:flutter/material.dart';

class AtendidosPage extends StatefulWidget {
  const AtendidosPage({ Key key }) : super(key: key);
  @override
  Atendidos createState() => Atendidos();
}

class Atendidos extends State<AtendidosPage> with SingleTickerProviderStateMixin {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body:
          new Container(
            child:
              new Text(
              "Atendidos",
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
