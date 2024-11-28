import 'package:flutter/material.dart';


import 'news_app_screens/ui_screen.dart';

void main() {
  runApp(Toku());

}
class Toku extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: newsapp()
   );
  }


}




