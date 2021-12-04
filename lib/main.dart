import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(JordanApp());

class JordanApp extends StatelessWidget{
  const JordanApp({Key? key}) : super(key: key);


  @override
  Widget build (BuildContext context){
    final wordPaire = WordPair.random();
    return MaterialApp(
      title: 'test bienvenue 3',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('bienvenue sur l\'app'),
        ),
        body: Center(
          child: Column(
            children: [
              const Text('     je test le code de base ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
              )),
              Text(wordPaire.asCamelCase),
            ],
          ),

        ),
      ),
    );
  }
}