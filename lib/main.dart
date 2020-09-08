import 'package:flutter/material.dart';
import 'package:instagram_clone/app/locator.dart';
import 'package:instagram_clone/insta_app.dart';
import 'package:stacked_services/stacked_services.dart';

import 'app/router.gr.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram-Clone',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: InstagramApp(),
      navigatorKey: locator<NavigationService>().navigatorKey,
      // initialRoute: Routes.startupViewRoute,
      onGenerateRoute: Router().onGenerateRoute,
    );
  }
}
