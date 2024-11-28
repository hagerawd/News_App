import 'package:flutter/material.dart';
class webview extends StatelessWidget {
  const webview({super.key,required this.text,required this.photo,required this.subtitle});


  final String photo;
  final String text;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: CustomScrollView( physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(child:
        Column(
          children: [
            SizedBox(height: 50,),
            Container(
                height: 230,width: 400,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
                  image:  DecorationImage(
                    image: NetworkImage(photo),
                    fit: BoxFit.cover,
                  ),
                ), child:Center(child: Text(''),
            )),

            Container(

              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(text,
                  style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),
              ),),

            Container(

              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(subtitle
                  ,
                  style: TextStyle(fontSize: 40,color: Colors.grey,fontWeight: FontWeight.bold),),
              ),)

          ],
        ),
        ),


      ],

    ),
      );
  }
}
