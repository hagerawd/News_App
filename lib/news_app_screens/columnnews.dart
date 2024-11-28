
import 'package:flutter/material.dart';


import '../categories/column_list.dart';
import '../models/newsmodel.dart';
import 'artical_model.dart';

class columnnews extends StatelessWidget {
  List<articalmodel> articals =[];


  columnnews({required this.articals});

  @override

  Widget build(BuildContext context) {

      return
        SliverList(delegate: SliverChildBuilderDelegate( (context,index)=>columnlist(Articalmodel: articals[index], ),
    childCount:articals.length

  ));
  }


}

