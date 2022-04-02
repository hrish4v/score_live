import 'dart:convert';
import 'package:http/http.dart';
import 'package:live_score/soccermodel.dart';


class SoccerApi{

  final String apiUrl="https://v3.football.api-sports.io/fixtures?season=2020&league=40";
  // static String api_key="e76cabc9d1mshd4348ffc0d59275p133d28jsnddb15c5d3d65";
  static const headers={
    'x-rapidapi-host': "v3.football.api-sports.io",
    'x-rapidapi-key': "26dac5c871aa2ec6cb9c0e13441bf068",
  };

  Future<List<SoccerMatch>> getAllMatches() async {
    Response res=await get(Uri.parse(apiUrl),headers:headers);
    var body;

    if(res.statusCode==200){
    body=jsonDecode(res.body);
    List<dynamic> matchesList =body['response'];
    print("Api service: ${body}");
    List<SoccerMatch> matches = matchesList
        .map((dynamic item) => SoccerMatch.fromJson(item)).toList();  //.map??

    return matches;

    }
  }


}