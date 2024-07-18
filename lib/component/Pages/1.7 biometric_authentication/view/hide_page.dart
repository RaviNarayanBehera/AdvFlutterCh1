import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';

class HiddenPage extends StatelessWidget {
  const HiddenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Photos',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
      ),
      body: Center(
        child: Column(
          children: [
            buildRow(img1: 'assets/images/profile.jpeg',img2: 'assets/images/profile.jpeg',img3: 'assets/images/profile.jpeg',img4: 'assets/images/profile.jpeg',),
            buildRow(img1: 'assets/images/profile.jpeg',img2: 'assets/images/profile.jpeg',img3: 'assets/images/profile.jpeg',img4: 'assets/images/profile.jpeg',),
            buildRow(img1: 'assets/images/profile.jpeg',img2: 'assets/images/profile.jpeg',img3: 'assets/images/profile.jpeg',img4: 'assets/images/profile.jpeg',),
            buildRow(img1: 'assets/images/profile.jpeg',img2: 'assets/images/profile.jpeg',img3: 'assets/images/profile.jpeg',img4: 'assets/images/profile.jpeg',),
            buildRow(img1: 'assets/images/profile.jpeg',img2: 'assets/images/profile.jpeg',img3: 'assets/images/profile.jpeg',img4: 'assets/images/profile.jpeg',),
          ],
        ),
      ),
    );
  }
  Row buildRow({required String img1,required String img2,required String img3,required String img4}) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          margin: EdgeInsets.all(2),
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              color: Colors.red.shade200,
              image: DecorationImage(image: AssetImage(img1))
          ),
        ),
        Container(
          // margin: EdgeInsets.only(left: 5,right: 5,top: 5,bottom: 5),
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              color: Colors.red.shade200,image: DecorationImage(image: AssetImage(img2))
          ),
        ),
        Container(
          margin: EdgeInsets.all(2),
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              color: Colors.red.shade200,
              image: DecorationImage(image: AssetImage(img3))
          ),
        ),
        Container(
          // margin: EdgeInsets.only(left: 5),
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              color: Colors.red.shade200,
              image: DecorationImage(image: AssetImage(img4))
          ),
        ),

      ],
    );
  }
}


