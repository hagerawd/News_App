import 'package:flutter/material.dart';

import '../news_app_screens/artical_model.dart';
import '../news_app_screens/webview.dart';


class columnlist extends StatelessWidget {
 const columnlist({required this.Articalmodel});

final String photo = 'images/images.png';
final articalmodel Articalmodel ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: GestureDetector(
        onTap: (){

          Navigator.of(context).push(MaterialPageRoute(builder: (context){
            return webview(text: Articalmodel.title, photo: Articalmodel.image??photo , subtitle: Articalmodel.subtitle??" ",);

          }));
        },
        child: Column(
          children: [
    //         Container(
    //           height: 230,width: 400,
    //           decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
    //             image:  DecorationImage(
    //               image: NetworkImage(Articalmodel.image ?? photo),
    //
    //               fit: BoxFit.cover,
    //             ),
    //           ), child:Center(child: Text(''),
    // )),

            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                Articalmodel.image != null && Articalmodel.image!.isNotEmpty
                    ? Articalmodel.image!
                    : 'https://i.pinimg.com/564x/c7/69/f0/c769f0ebda03f60ef1854bbd01f64814.jpg',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Image.network(
                    'https://i.pinimg.com/564x/c7/69/f0/c769f0ebda03f60ef1854bbd01f64814.jpg',
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                },
              ),
            ),
            Container(

              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(Articalmodel.title,
                  style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
              ),),

            Container(

              child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(Articalmodel.subtitle?? ' ',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 20,color: Colors.grey,fontWeight: FontWeight.bold),),
            ),)

          ],
        ),
      ));
  }
}
