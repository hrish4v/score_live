import 'package:flutter/material.dart';

Widget goalStat(int expandedTime,int homeGoal,int awayGoal){
  var home=homeGoal;
  var away=awayGoal;
  var elapsedTime=expandedTime;
  if(home==null) home=0;
  if(away==null) away=0;
  if(elapsedTime==null) elapsedTime=0;
  return Expanded(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "${elapsedTime}",
          style: TextStyle(
            fontSize: 30.0,
          ),
        ),
        Expanded(
            child: Center(
              child: Text("${home} - ${away}",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 36.0,
              ),
              ),
            )
        ),
      ],
    ),
  );
}