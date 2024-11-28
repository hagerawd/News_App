import 'package:flutter/material.dart';

import '../models/newsmodel.dart';
import '../news_app_screens/categoryView.dart';

class rowlist extends StatelessWidget {
  const rowlist({required this.category});

 final categorymodel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return categoryview(category: category.text);
        }));
      },
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Container(
          height: 145,width: 170,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(22),
            image:  DecorationImage(

              image: AssetImage(category.image!),
              fit: BoxFit.cover,
            ),
          ), child:Center(child: Text(category.name,style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),)) ,),
      ),
    );

  }
}
