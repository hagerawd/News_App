
import 'package:dio/dio.dart';

import 'artical_model.dart';

class newservices {
  final Dio dio;

  newservices(this.dio);

  Future<List<articalmodel>> getnews ({required String category}) async{
    try {
      Response response =await dio.get(
          'https://newsdata.io/api/1/latest?apikey=pub_60273ced5464f061f86e80a78fa0094425d22&category=$category');
      Map<String,dynamic> jsondata =  response.data;

      List<dynamic> articles = jsondata['results'];

      List<articalmodel> articallist = [];

      var i=0;
      for(var artical in articles){
        articalmodel article =articalmodel(
            image: artical['image_url'], subtitle: artical['description'], title: artical['title'], index: i);
        articallist.add(article);
        i++;
      }
      return articallist;
    }   catch (e) {
      return [];
    }


  }

}