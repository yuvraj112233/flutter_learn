import 'package:flutter/material.dart';

class NewsContainer extends StatelessWidget {
  String imgUrl;
  String newsHead;
  String newsDes;
  String newsCnt;
  String newsUrl;

   NewsContainer({super.key ,
   required this.imgUrl,
   required this.newsDes,
   required this.newsCnt,
   required this.newsHead,
   required this.newsUrl
   
   
   });

  @override
  Widget build(BuildContext context) {
    return Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,

          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.start,


            children: [

            Image.network(
              height : 250,
              width : MediaQuery.of(context).size.width,
              fit: BoxFit.cover
              ,imgUrl),

            SizedBox(height: 20,),
            Text(

              newsHead.length > 70 ? 
              "${newsHead.substring(0,70) }...": newsHead
              
              
              , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            Text(newsDes ,style: TextStyle(fontSize: 13, color: Colors.black38),),
            SizedBox(height: 20,),
            Text(
               
               newsCnt.length >200 ? newsCnt.substring(0,200):
              "${newsCnt.toString().substring(0, newsCnt.length-15)}..." ,
              style: TextStyle(fontSize: 17),),
            Spacer(),


            Row(
              mainAxisAlignment: MainAxisAlignment.end  ,
              children: [
                ElevatedButton(onPressed: () {
                  print("Going To $newsUrl");
                },
                child: Text("Read more"),),
              ],
            ),
            SizedBox(height: 20,),
          ],),




        );
  }
}