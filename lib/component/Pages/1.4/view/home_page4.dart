import 'package:flutter/material.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
          Text('   Let Your Ideas Fly\nwith Help & Mentoring',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,letterSpacing: 1),),
          SizedBox(height: 15,),
          Text('Foster an environment of innovation\nwith the annual identhon. Encourage\n     young enterpreneurs so that\n   exceptional business ideas get to\nmarket fast with the right mentoring.',style: TextStyle(fontWeight: FontWeight.w500,letterSpacing: 1,color: Colors.grey),),
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
