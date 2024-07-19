import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme/component/Pages/8.1%20json_parsing/provider/photo_provider.dart';

class PhotoPage extends StatelessWidget {
  const PhotoPage({super.key});

  @override
  Widget build(BuildContext context) {
    PhotoProvider photoProvider = Provider.of<PhotoProvider>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Photo Provider',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
      ),
      body: ListView.builder(
        itemCount: photoProvider.photoList.length,
          itemBuilder: (context, index) => ListTile(
                title: Text(photoProvider.photoList[index].title,style: TextStyle(color: Colors.black),),
            leading: CircleAvatar(backgroundImage: NetworkImage(photoProvider.photoList[index].url),),
              )),
    );
  }
}
