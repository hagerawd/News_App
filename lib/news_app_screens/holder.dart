// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:project_1/news_app_screens/artical_model.dart';
// import 'package:project_1/news_app_screens/news_services.dart';
//
// import '../categories/column_list.dart';
// import '../models/newsmodel.dart';
// class columnnews extends StatefulWidget {
//   const columnnews({
//     super.key,
//   });
//
//
//   @override
//   State<columnnews> createState() => _columnnewsState();
// }
//
// class _columnnewsState extends State<columnnews> {
//   List<articalmodel> articals =[];
//   bool isLoading = true;
//   @override
//   void initState()  {
//
//     super.initState();
//
//     get_news();
//   }
//
//   Future<void> get_news() async {
//
//     articals = await newservices(Dio()).getnews();
//     isLoading =false ;
//     setState(() {
//
//     });
//   }
//
//   @override
//
//   Widget build(BuildContext context) {
//
//     return isLoading ? SliverToBoxAdapter(child: Container(
//         width: 400,height: 600,
//         child: Center(child: CircularProgressIndicator.adaptive(value: 100,)))) :
//     SliverList(delegate: SliverChildBuilderDelegate((context,index){
//       return  columnlist(Articalmodel: articals[index], );
//     }));
//   }
// }
//
