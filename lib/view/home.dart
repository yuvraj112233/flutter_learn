import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: PageController(initialPage: 0),
        scrollDirection: Axis.vertical,
        itemCount: 10,
        itemBuilder: (context , index){
        return Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,

          child: Column(children: [

            Image.network("src"),
            Text("Book Heading"),
            Text("Book Description"),
            ElevatedButton(onPressed: () {},
            child: Text("Read more"),)
          ],),




        );
        
        
      }),
    );
  }
}