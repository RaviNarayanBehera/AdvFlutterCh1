import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text('Skip',style: TextStyle(color: Colors.grey),),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 250,
            width: double.infinity,
            color: Colors.red.shade200,
          ),
          Text('Everything a Student\n    Needs and More',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,letterSpacing: 1),),
          SizedBox(height: 15,),
          Text('  Student essentials range from \n   academic books to uniforms,\nbranded merchandise, stationery\nand more. Centralize access to all \n this and more via a single log in',style: TextStyle(fontWeight: FontWeight.w500,letterSpacing: 1,color: Colors.grey),),
          SizedBox(height: 45,),
          ElevatedButton(
            onPressed: () {

            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              minimumSize: const Size(200, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: const Text('GET STARTED',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15,letterSpacing: .75),), // Button ka text
          ),
        ],
      ),
    );
  }
}
