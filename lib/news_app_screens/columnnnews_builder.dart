import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'artical_model.dart';
import 'columnnews.dart';
import 'news_services.dart';
class columnnnews_builder extends StatefulWidget {
  columnnnews_builder({required this.category});
  final String category;
  @override
  State<columnnnews_builder> createState() => _columnnnews_builderState();
}
var future;
class _columnnnews_builderState extends State<columnnnews_builder> {
  @override
  void initState()  {
    super.initState();
    future= newservices(Dio()).getnews(category: widget.category);
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder <List<articalmodel>> (
        future: future,
        builder: (Context , Snapshot ){
           if(Snapshot.hasData) {return columnnews(articals: Snapshot.data!,);}
           else if(Snapshot.hasError) {return SliverToBoxAdapter(child: Container( width: 400,height: 600, child: Center(child: Text(' Oops there was an error ,\n  try later ',style: TextStyle (fontWeight: FontWeight.bold ,fontSize: 30),))));}
           else{return SliverToBoxAdapter(child: Container(width: 400,height: 600, child: Center(child: CircularProgressIndicator.adaptive(value: 100 ,))));}
        }) ;
  }
}