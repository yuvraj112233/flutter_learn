import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn/view/home.dart';
void main() {
  runApp(MaterialApp(
    title:"Test",
    home:MainScreen(),
    debugShowCheckedModeBanner: false,
  ));
}
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(height: 900,
          width: 500,color: const Color.fromARGB(255, 26, 25, 104),),
          Padding(
            padding: const EdgeInsets.only(top: 240),
            child: Container(height: 600,width: 500,decoration: BoxDecoration
            (color: const Color.fromARGB(255, 199, 228, 34),borderRadius: BorderRadius.only
            (topRight: Radius.circular(60), topLeft: Radius.circular(60))),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 150,left: 170),
            child: Text("Login",style: TextStyle(fontSize: 40,color: Colors.white ,fontWeight: FontWeight.bold ),),
          ),
           
          Padding(
            padding: const EdgeInsets.only(top: 300,left: 50),
            child: Container(
              height: 200,
              width: 300,
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Email",
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide
                  (width: 3),borderRadius: BorderRadius.circular(10))
                ),
              ),
            ),
          ),

           Padding(
            padding: const EdgeInsets.only(top: 400,left: 50),
            child: Container(
              height: 200,
              width: 300,
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Password",
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide
                  (width: 3),borderRadius: BorderRadius.circular(10))
                ),
              ),
            ),
           ),  SizedBox(
              // width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(top: 500,left: 170),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  },
                  child: const Text("Login"),
                ),
              ),
            ), 

           ],
           )
    );
  } 
}