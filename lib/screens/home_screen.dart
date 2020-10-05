import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class HomeScreen extends StatelessWidget {
  final _estilo = TextStyle(fontSize: 35.0);
  final FlutterTts flutterTts = FlutterTts();

  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController = TextEditingController();

    Future _hablar(String text) async {
      await flutterTts.setLanguage("es-ES");
      await flutterTts.speak(text);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Speak Me'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
          child: Column(
        children: [
          TextFormField(
            controller: textEditingController,
            style: _estilo,
          ),
          RaisedButton(
            child: Text("Pulse para escuchar el texto introducido"),
            onPressed: () => _hablar(textEditingController.text),
            textColor: Colors.white,
            color: Colors.red,
          )
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      )),
    );
  }
}
