import 'package:flutter/material.dart';
import 'package:live_score/api_manager.dart';
import 'package:live_score/pagerbody.dart';
import 'api_manager.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SoccerApp(),
    );
  }
}

class SoccerApp extends StatefulWidget {
  @override
  _SoccerAppState createState() => _SoccerAppState();
}

class _SoccerAppState extends State<SoccerApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      appBar: AppBar(
        backgroundColor: Color(0xFFFAFAFA),
        elevation: 0.0,
        title: Text(
          'SOCCERBOARD',
          style: TextStyle(
            color: Colors.black
          ),
        ),
        centerTitle: true,
      ),

      body: FutureBuilder(  //FutureBuilder
        future: SoccerApi().getAllMatches(),
        builder: (context,snapsort){
          if(snapsort.hasData){
            print((snapsort.data).legth);
            return PageBody(snapsort.data);
          }else{
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
