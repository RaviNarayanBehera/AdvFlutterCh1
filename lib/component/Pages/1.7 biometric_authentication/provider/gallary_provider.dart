// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:local_auth/local_auth.dart';
//
// import '../view/hide_page.dart';
//
// class OpenHideFolderProvider extends ChangeNotifier {
//   bool _authis = true;
//   final LocalAuthentication auth = LocalAuthentication();
//
//   Future<void> Navset(BuildContext context) async {
//     if (_authis) {
//       final bool canAuthenticat = await auth.canCheckBiometrics;
//       if (canAuthenticat) {
//         final bool didauth = await auth.authenticate(
//           localizedReason: "Please enter pass",
//           options: AuthenticationOptions(
//             biometricOnly: true,
//           ),
//         );
//         _authis = didauth;
//       }
//       if(_authis)
//       {
//         Navigator.of(context).push(MaterialPageRoute(
//           builder: (context) => HideFolderPage(),
//         ));
//       }
//       else {
//         ScaffoldMessenger.of(context)
//             .showSnackBar(SnackBar(content: Text("Password is wrong")));
//         _authis=true;
//       }
//
//     }
//     notifyListeners();
//   }
// }


import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';

import '../view/hide_page.dart';

class HideProvider extends ChangeNotifier
{
  bool condition = true;

  final LocalAuthentication auth = LocalAuthentication();

  Future<void> passcode(BuildContext context) async {
    if (condition) {
      final bool canAuthenticate = await auth.canCheckBiometrics;
      if (canAuthenticate) {
        final bool right = await auth.authenticate(
          localizedReason: "Please Enter Password",
          options: AuthenticationOptions(
            biometricOnly: true,
          ),
        );
        condition = right;
      }
      if(condition)
      {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => HiddenPage(),
        ));
      }
      else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("Wrong Password...!")));
        condition=true;
      }

    }
    notifyListeners();
  }
}