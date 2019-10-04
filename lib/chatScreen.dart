import 'package:flutter/material.dart';
import 'chatMensaje.dart';


class ChatScreen extends StatefulWidget {
  final String nombresito ;
  final String user ;
  //for opotional params we use curly braces
  ChatScreen({this.nombresito, this.user});
  @override
  State createState() => new ChatScreenState(nombresito: nombresito, user: user);
}

class ChatScreenState extends State<ChatScreen>  {
  final TextEditingController textEditingController = new TextEditingController();
  final List<ChatMessage> _messages= <ChatMessage>[];

  final String nombresito ;
  final String user ;
  ChatScreenState({this.nombresito, this.user});


  void _handleSubmit(String text) {
    textEditingController.clear();
    ChatMessage chatMessage = new ChatMessage(text, user);
    setState(() {
          //used to rebuild our widget
          _messages.insert(0, chatMessage);
        });
  }

  Widget _textComposerWidget() {
    return new IconTheme(
      data: new IconThemeData(color: Colors.blue),
      child: new Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: new Row(
          children: <Widget>[
            new Flexible(
              child: new TextField(
                decoration: new InputDecoration.collapsed(
                    hintText: "Escribe tu mensaje"),
                controller: textEditingController,
                onSubmitted: _handleSubmit,
              ),
            ),
            new Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              child: new IconButton(
                icon: new Icon(Icons.send),
                onPressed: () => _handleSubmit(textEditingController.text),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(nombresito),
      ),
      body: new Column(
        children: <Widget>[
          new Flexible(
            child: new ListView.builder(
              padding: new EdgeInsets.all(8.0),
              reverse: true,
              itemBuilder:(_,int index)=>_messages[index],
              itemCount: _messages.length, 
            ),
          ),
          new Divider(height: 1.0,),
          new Container(
            decoration: new BoxDecoration(
              color: Theme.of(context).cardColor,
            ),
            child: _textComposerWidget(),
          )
        ],
      ),
    );
      
  }
}