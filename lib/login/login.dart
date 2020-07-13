import 'dart:ffi';

import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shiftemtion_app/main_page/main_page.dart';
import 'package:http/http.dart' as http;
import 'package:shiftemtion_app/globals.dart' as globals;
import 'package:spotify/spotify.dart';
import 'package:uni_links/uni_links.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Login extends StatelessWidget {
  Void listen(String redirectUri) {}

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        FlareActor(
          "assets/animations/login_background.flr",
          shouldClip: true,
          alignment: Alignment.topLeft,
          fit: BoxFit.fill,
          animation: 'start',
        ),
        Container(
          margin: EdgeInsets.all(40),
          child: Center(
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100.0),
              ),
              color: Color.fromRGBO(34, 47, 62, 1),
              splashColor: Color.fromRGBO(87, 101, 116, 1.0),
              padding: EdgeInsets.all(15),
              child: Row(
                children: <Widget>[
                  SvgPicture.asset(
                    "assets/icons/spotify.svg",
                    height: 25,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Inicia sesion con Spotify",
                    softWrap: false,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                ],
              ),
              onPressed: () async {
                final credentials = SpotifyApiCredentials(
                    globals.SpotifyClientId, globals.SpotifySecretKey);
                var spotify = SpotifyApi(credentials);
                var featuredPlaylists = await spotify.search.m
                Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text("We did it!"),
                ));
                /*Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainPage()),
                );*/
              },
            ),
          ),
        )
      ],
    );
  }
}
