import 'package:flutter/material.dart';
import 'chatScreen.dart';

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
          ListView(
            children: <Widget>[
              Card(
                child: ListTile(
                    title: Text('Macarena Ibañez Amado'),
                    subtitle: Text('Pruebaaaaaaaaa'),
                    onTap: () {
                      Navigator.of(context)
                      .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
                        return new ChatScreen(nombresito: 'Macarena Ibañez Amado', user: "Juan Almada");
                      }));
                    }
                  )
              ),
              Card(
                child: ListTile(
                    title: Text('Fabiana Castellon'),
                    subtitle: Text('Asad123123'),
                    onTap: () {
                      Navigator.of(context)
                      .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
                        return new ChatScreen(nombresito: 'Fabiana Castellon', user: "Juan Almada");
                      }));
                    }
                  )
              ),
              Card(
                child: ListTile(
                    title: Text('Daniel Almada'),
                    subtitle: Text('Bla bla bla'),
                    onTap: () {
                      Navigator.of(context)
                      .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
                        return new ChatScreen(nombresito: 'Daniel Almada', user: "Juan Almada");
                      }));
                    }
                  )
              ),
            ],
          )
      );
  }
}
