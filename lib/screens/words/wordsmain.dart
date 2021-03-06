import 'package:flutter/material.dart';
import 'package:guzel_ama_ingilicce/models/user.dart';
import 'package:guzel_ama_ingilicce/screens/authenticate/register.dart';
import 'package:guzel_ama_ingilicce/screens/profile/profilesettings.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:guzel_ama_ingilicce/screens/words/wordstest.dart';
import 'package:guzel_ama_ingilicce/services/database.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:guzel_ama_ingilicce/services/auth.dart';
import 'package:guzel_ama_ingilicce/models/variables.dart';

class Words extends StatefulWidget {
  @override
  _WordsState createState() => _WordsState();
}

class _WordsState extends State<Words> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:ListView(
        padding: new EdgeInsets.all(1.0),
        children: <Widget>[
          SizedBox(
            height: 200.0,
            child:RaisedButton(
              color:Colors.white,
              onPressed: (){},
            ),
          ),
          SizedBox(
            height: 60.0,
            child:RaisedButton(
              child: Text("Play"),
              color:Colors.white,
              onPressed: () async{
                await getRandomWordList();

                optionA=wordList[0].dataEN.toString();
                optionB=wordList[1].dataEN.toString();
                optionC=wordList[2].dataEN.toString();

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WordsTest()),
                );
              },
            ),
          ),

        ],
      ),
    );

  }
}
