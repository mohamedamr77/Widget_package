

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomShowSearch extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search"),
        actions: [
          IconButton(onPressed: (){
            showSearch(context: context, delegate: CustomSearchDelegate());
          }, icon: Icon(Icons.search))
        ],
      ),
    );
  }

}

class CustomSearchDelegate extends SearchDelegate{
List<String> SearchTerms=[
  "Apple",
  "Banana",
  "Cherry",
  "Grapes",
  "Mango",
  "Orange",
  "Pineapple",
  "Strawberry",
  "Watermelon",
  "Kiwi",
  "Peach",
  "Pear",
  "Pineapple",
];

@override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(icon: Icon(Icons.clear), onPressed: (){
        query = "";
      }
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(onPressed:(){
      close(context, null);
    } , icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery=[];
    for(var fruit in SearchTerms){
      if(fruit.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        var result=matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
      itemCount: matchQuery.length,
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery=[];
    for(var fruit in SearchTerms){
      if(fruit.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        var result=matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
      itemCount: matchQuery.length,
    );
  }
  
}