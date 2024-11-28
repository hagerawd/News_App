import 'package:flutter/material.dart';

import '../categories/row_list.dart';
import '../models/newsmodel.dart';

class rownews extends StatelessWidget {
  const rownews({
    super.key,
    required this.categories,
  });

  final List<categorymodel> categories;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index){
            return  rowlist( category: categories[index]);
          }),
    );
  }
}