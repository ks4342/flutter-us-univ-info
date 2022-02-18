import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:univinfo/data/constants.dart';
import 'package:univinfo/services/api_details.dart';
import 'package:univinfo/model/Universities.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Univ Info"),centerTitle: true,),
      body: Column(children: [
        Expanded(child: FutureBuilder(future: getUnivApi(),builder: (context, AsyncSnapshot<List<Universities>> snapshot){return ListView.builder(itemCount: univList.length,itemBuilder: (context ,index){if(snapshot.hasData){return Card(child: ListTile(onTap: (){launchURL(snapshot.data![index].webPages![0].toString());},subtitle: Text(snapshot.data![index].country.toString()),title: Text(snapshot.data![index].name!),));}else{return Center(child: CircularProgressIndicator(),);}});},),)
      ],)
    );
  }
}
