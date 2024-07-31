import 'package:flutter/material.dart';



// HomePage screen
class MusicApp extends StatelessWidget{

  MusicApp();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}