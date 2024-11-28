import 'dart:ui';

import 'package:flutter/material.dart';



import '../models/newsmodel.dart';
import 'columnnnews_builder.dart';

class categoryview  extends StatelessWidget {
  const categoryview ({ required this.category});

  final String category;
  @override
  Widget build(BuildContext context) {

    final categorymodel category2;

    return Scaffold(

      appBar: AppBar(
        flexibleSpace: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 7, sigmaY: 7),
            child: Container(
              color: Colors.transparent,
            ),
          ),
        ),
       centerTitle: true,title:Text( category.capitalize()+" News",
         style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold)),),

      body: CustomScrollView(slivers:[
        columnnnews_builder(category: category ,)
    ])
    );
  }
}
extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1).toLowerCase()}";
  }
}
