import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactProvider extends ChangeNotifier
{
  void smsDeliver()
  {
    Uri uri = Uri.parse('sms:9510421589');
    launchUrl(uri);
  }

  void numberDeliver()
  {
    Uri uri = Uri.parse('tel: +91 9510421589');
    launchUrl(uri);
  }

  void mailDeliver()
  {
    Uri uri = Uri.parse('mailto: ravinarayan.b9510@gmail.com');
    launchUrl(uri);
  }

  void githubPage()
  {
    Uri uri = Uri.parse('https://github.com/RaviNarayanBehera');
    launchUrl(uri,mode: LaunchMode.inAppWebView);
  }

  void linkedinPage()
  {
    Uri uri = Uri.parse('https://www.linkedin.com/in/ravi-narayan-behera-8633a72b3/');
    launchUrl(uri,mode: LaunchMode.inAppWebView);
  }


}