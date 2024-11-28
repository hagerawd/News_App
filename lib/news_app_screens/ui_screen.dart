import 'package:flutter/material.dart';
import 'package:newsapp/news_app_screens/rownews.dart';
import '../GradientText.dart';
import '../models/newsmodel.dart';
import 'columnnnews_builder.dart';
class newsapp extends StatelessWidget {
   newsapp({super.key});



   List<categorymodel> categories = const [
    categorymodel(image:'images/b.jfif' , text: 'business', name: 'Business', ),
    categorymodel(image:'images/ed.jfif' , text: 'education', name: 'Education', ),
    categorymodel(image:'images/en.jfif' , text: 'entertainment', name: 'Entertainment', ),
    categorymodel(image:'images/sp.jfif' , text: 'sports', name: 'Sport', ),
     categorymodel(image:'images/te.jfif' , text: 'technology', name: 'Technology', ),
    categorymodel(image:'images/he.jfif' , text: 'health', name: 'Health', ),
  ];




  // final List<categorymodel> coulmncategories =const [
  //   categorymodel(image:'images/newsapp/n14.jfif' ,
  //       text: ' News of the Day \n  News_PaperWWW.com '
  //       '\n Amid the momentum and diversity of news, finding the truth behind the stories remains important.'),
  //   categorymodel(image:'images/newsapp/n5.jfif' ,
  //       text: ' The news reflects our reality and our attitudes '),
  //   categorymodel(image:'images/newsapp/n6.jfif' ,
  //       text: ' Amid the abundance of events and the flow of news, our role revolves around choosing reliable sources and carefully analyzing the facts to understand the facts more deeply and broadly.'),
  //   categorymodel(image:'images/newsapp/n3.jfif' ,
  //       text: 'News plays a vital role in our lives, as it gives us a quick overview of the current events in the world.'),
  //   categorymodel(image:'images/newsapp/n13.jfif' ,
  //       text: ''),
  //
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(elevation: 0, backgroundColor: Colors.white, title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GradientText(
            ' News Cloud ☁️ ',
            style: const TextStyle(fontSize: 35,fontWeight: FontWeight.bold),
            gradient: LinearGradient(colors: [
              Colors.purple.shade500,
              Colors.blue.shade400,
            ]),
          ),

        ],
      ),),


      body: CustomScrollView(





        slivers: [
          SliverToBoxAdapter(child: rownews(categories: categories,),),
          columnnnews_builder(category: 'business',),




        ],
      )


    );
  }
}





