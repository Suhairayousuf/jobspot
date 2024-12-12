import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'features/auth/screens/logo_screen.dart';
import 'features/auth/screens/splash_screen.dart';

void main() {
  runApp(
      Provider(
        create:(context)=>false,
          child:MyApp()

      ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Provider.of<bool>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      // home: const LogoScreen(),
      home: const CounterScreen(),
    );
  }
}


