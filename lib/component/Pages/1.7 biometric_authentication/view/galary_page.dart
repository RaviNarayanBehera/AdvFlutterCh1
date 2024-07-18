
import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Gallery',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Icon(Icons.search),
                    PopupMenuButton(initialValue: popUpMenuItems,
                      itemBuilder: (context) => popUpMenuItems,

                      onSelected: (value) {
                        if (value == 1) {

                        }
                      },)
                  ],
                ),
                buildRow(name1: 'Camera',img1: 'assets/images/profile.jpeg',num1: '1151',name2: 'Family',img2: 'assets/images/profile.jpeg',num2: '451',name3: 'Facebook',img3: 'assets/images/profile.jpeg',num3: '154'),
                buildRow(name1: 'WhatsApp',img1: 'assets/images/profile.jpeg',num1: '545',name2: 'Screenshot',img2: 'assets/images/profile.jpeg',num2: '848',name3: 'Instagram',img3: 'assets/images/profile.jpeg',num3: '111'),
                buildRow(name1: 'Collage',img1: 'assets/images/profile.jpeg',num1: '1015',name2: 'Flowers',img2: 'assets/images/profile.jpeg',num2: '547',name3: 'Animals',img3: 'assets/images/profile.jpeg',num3: '015'),
                buildRow(name1: 'Collage',img1: 'assets/images/profile.jpeg',num1: '1015',name2: 'Flowers',img2: 'assets/images/profile.jpeg',num2: '547',name3: 'Animals',img3: 'assets/images/profile.jpeg',num3: '015'),
                buildRow(name1: 'Collage',img1: 'assets/images/profile.jpeg',num1: '1015',name2: 'Flowers',img2: 'assets/images/profile.jpeg',num2: '547',name3: 'Animals',img3: 'assets/images/profile.jpeg',num3: '015'),
                // buildRow(name: 'Ravi'),
                // buildRow(name: 'Ravi'),
                // buildRow(name: 'Ravi'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row buildRow({required String name1,required String img1,required String num1,required String name2,required String img2,required String num2,required String name3,required String img3,required String num3}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 5,right: 5,top: 5,bottom: 5),
              height: 110,
              width: 110,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.red.shade200,
                  image: DecorationImage(image: AssetImage(img1))
              ),
            ),
            Text(name1,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
            Text(num1,style: TextStyle(color: Colors.grey,fontSize: 11,fontWeight: FontWeight.bold),),
          ],
        ),
        Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 5,right: 5,top: 5,bottom: 5),
              height: 110,
              width: 110,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.red.shade200,image: DecorationImage(image: AssetImage(img2))
              ),
            ),
            Text(name2,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
            Text(num2,style: TextStyle(color: Colors.grey,fontSize: 11,fontWeight: FontWeight.bold),),
          ],
        ),
        Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 5,right: 5,top: 5,bottom: 5),
              height: 110,
              width: 110,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.red.shade200,
                  image: DecorationImage(image: AssetImage(img3))
              ),
            ),
            Text(name3,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
            Text(num3,style: TextStyle(color: Colors.grey,fontSize: 11,fontWeight: FontWeight.bold),),
          ],
        ),

      ],
    );
  }
}


List<PopupMenuEntry> popUpMenuItems = [
  const PopupMenuItem(
    value: 0,
    child: Text('Settings'),
  ),
  const PopupMenuItem(
    value: 1,
    child: Text('Hidden Photos'),
  ),
];