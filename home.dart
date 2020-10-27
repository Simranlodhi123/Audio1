import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

myapp1() {
  mypress() {
    var audio = AudioCache();
    audio.play('happy_birthday.mp3');
  }
  AudioPlayer audioPlayer = AudioPlayer();
          var a=AudioCache(fixedPlayer: audioPlayer);

  var verticle;
  var mybody = Container(
    alignment: Alignment.center,
    width: double.infinity,
    height: double.infinity,
    color: Colors.grey.shade200,
    margin: EdgeInsets.all(10),
    child: Column(

      children: <Widget>[
        Container(
          child: Text(
            'Happy Birthday Song',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.grey,
              width: 3,
            ),
          ),
          margin: EdgeInsets.all(50),
          
          alignment: Alignment.center,
          width: 350,
          height: 200,
          // color: Colors.amber,

          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1546058256-47154de4046c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Container(
            decoration: BoxDecoration(
              color: Colors.red.shade400,
              borderRadius: BorderRadius.circular(10),
            ),
            width: 100,
            height: 50,
            child: FlatButton.icon(
              onPressed: mypress,
              icon: Icon(Icons.play_arrow),
              label: Text('play'),
            ) 
            ),
        Container(
            decoration: BoxDecoration(
              color: Colors.red.shade400,
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.symmetric(vertical: 5),
            width: 100,
            height: 50,
            //color:Colors.blue.shade400,
            child: FlatButton.icon(
              onPressed:(){ audioPlayer.pause();},
              icon: Icon(Icons.pause),
              label: Text('pause'),
            ),
            ),
        Container(
            decoration: BoxDecoration(
              color: Colors.red.shade400,
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.symmetric(vertical: 4),
            width: 100,
            height: 50,

            child: FlatButton.icon(
              onPressed: (){audioPlayer.stop();},
              icon: Icon(Icons.stop),
              label: Text('stop'),
            ) 
            ),
      ],
    ),
  );
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    
    home: Scaffold(
      appBar: AppBar(
        title: Text('Instrumental Play'),
        backgroundColor: Colors.redAccent,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.account_circle,
                color: Colors.black,
              ),
              onPressed: null),
        ],
      ),
      backgroundColor: Colors.green.shade100,
      body: mybody,
    ),
  );
}
