import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new Scaffold(
        body: FlareActor(
          "assets/animations/login_background.flr",
          shouldClip: true,
          alignment: Alignment.topLeft,
          fit: BoxFit.fill,
          animation: 'Background Loop',
        ),
      ),
    );
  }
}
