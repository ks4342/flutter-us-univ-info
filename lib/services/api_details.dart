import 'package:univinfo/data/constants.dart';
import 'package:univinfo/model/Universities.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';
List<Universities> univList = [];
Future<List<Universities>> getUnivApi() async {
  Uri uri = Uri.parse(apiURL);
  final response = await http.get(uri);
  var data = jsonDecode(response.body);
  if(response.statusCode==200){
    for (Map i in data){
      univList.add(Universities.fromJson(i));


    }
    return univList;
  }else{
    return univList;
  }
}
void launchURL(String _url) async {
  await canLaunch(_url)
      ? await launch(_url, enableJavaScript: true,forceWebView: true)
      : throw 'Could not launch $_url';
}
