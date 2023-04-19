



import 'package:firebase_core/firebase_core.dart';

import 'getstarted.dart';
import 'homepage.dart';
import 'package:flutter/material.dart';

import 'login.dart';
import 'profile.dart';
import 'register.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  // We're using the manual installation on non-web platforms since Google sign in plugin doesn't yet support Dart initialization.
  // See related issue: https://github.com/flutter/flutter/issues/96391

  // We store the app and auth to make testing with a named instance easier.
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: GetStarted(),
    routes: {
      'getstarted':(context) => GetStarted(),
      'register': (context) => MyRegister(),
      'login': (context) => MyLogin(),
      'homepage': (context) => HomePage(),
      'profile':(context) => Profile(),
    },
  ));
}