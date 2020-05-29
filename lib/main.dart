import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Hope();
  }
}
class Hope extends StatelessWidget {
  bool uno = false;
  bool dos = false;
  bool tres = false;
  bool cuatro = false;
  bool cinco = false;

  void teclaSound(int nota) {
    final audioPlayer = AudioCache();
    audioPlayer.play('sound$nota.mp3');
  }

  Expanded creaTecla({Color color, int nota}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          teclaSound(nota);
          _changeElevation(nota);
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'X',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                creaTecla(color: Colors.red, nota: 1),
                creaTecla(color: Colors.blue, nota: 2),
                creaTecla(color: Colors.yellow, nota: 3),
                creaTecla(color: Colors.lightBlueAccent, nota: 4),
                creaTecla(color: Colors.green, nota: 5),

              ],
            ),
          )
      ),
    );
  }
   _changeElevation(int numero){
    _clean();
    if (numero == 1){
      uno = true;
    }else if(numero == 2){
      dos = true;
    }
    else if(numero == 3){
      tres = true;
    }
    else if(numero == 4){
      cuatro = true;
    }
    else if(numero == 5){
      cinco = true;
    }
  }
  _clean(){
    uno = false;
    dos = false;
    tres = false;
    cuatro = false;
    cinco = false;
  }
}
