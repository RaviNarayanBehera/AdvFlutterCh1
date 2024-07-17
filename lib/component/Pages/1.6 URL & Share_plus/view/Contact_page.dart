import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme/component/Pages/1.6%20URL%20&%20Share_plus/provider/contact_provider.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {

    ContactProvider contactProvider = Provider.of<ContactProvider>(context,listen: false);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Contact Us',style: TextStyle(color: Colors.blue,fontSize: 25,fontWeight: FontWeight.bold),),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0,right: 20,top: 20,bottom: 15),
        child: Column(
          children: [
            Center(child: Text('If you have any queries,get in touch with\n    us. We will be happy to help you!',style: TextStyle(fontSize: 17,letterSpacing: 1.5),),),
            SizedBox(height: 30,),
            GestureDetector(
              onTap: () {
                contactProvider.numberDeliver();
              },
              child: Container(
                margin: EdgeInsets.only(bottom: 15),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    width: 1.5,
                    color: Colors.grey
                  ),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 48.0,right: 40),
                      child: Icon(Icons.phone_android_sharp,size: 30,),
                    ),
                    Text('+91 9510421589',style: TextStyle(fontSize: 20),)
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                contactProvider.smsDeliver();
              },
              child: Container(
                margin: EdgeInsets.only(bottom: 15),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    width: 1.5,
                    color: Colors.grey
                  ),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 48.0,right: 40),
                      child: Icon(Icons.message,size: 30,),
                    ),
                    Text('Message',style: TextStyle(fontSize: 20),)
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                contactProvider.mailDeliver();
              },
              child: Container(
                margin: EdgeInsets.only(bottom: 15),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    width: 1.5,
                    color: Colors.grey
                  ),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 48.0,right: 40),
                      child: Icon(Icons.mail_outline_outlined,size: 30,),
                    ),
                    Text('Gmail',style: TextStyle(fontSize: 20),)
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                contactProvider.githubPage();
              },
              child: Container(
                margin: EdgeInsets.only(bottom: 15),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                      width: 1.5,
                      color: Colors.grey
                  ),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 48.0,right: 40),
                      child: Icon(Icons.computer,size: 30,),
                    ),
                    Text('GitHub',style: TextStyle(fontSize: 20),)
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                contactProvider.linkedinPage();
              },
              child: Container(
                margin: EdgeInsets.only(bottom: 15),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                      width: 1.5,
                      color: Colors.grey
                  ),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 48.0,right: 40),
                      child: Icon(Icons.phonelink_rounded,size: 30,),
                    ),
                    Text('Linkedin',style: TextStyle(fontSize: 20),)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
