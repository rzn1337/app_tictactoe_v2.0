import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';

import 'home_page.dart';

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final color = Colors.white;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: Scaffold(
            backgroundColor: Colors.black,
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 120.0),
                      child: Container(
                        child: Text(
                          "TIC TAC TOE",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontFamily: '2p'),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: AvatarGlow(
                        endRadius: 140,
                        duration: Duration(seconds: 2),
                        glowColor: Colors.white,
                        repeat: true,
                        repeatPauseDuration: Duration(seconds: 1),
                        startDelay: Duration(seconds: 1),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                style: BorderStyle.none,
                              ),
                              shape: BoxShape.circle),
                          child: CircleAvatar(
                            backgroundColor: Colors.black,
                            child: Container(
                              child: Image.asset(
                                'assets/tictactoelogo.png',
                                color: Colors.red,
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                            radius: 80.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 80.0),
                      child: Container(
                        child: Text(
                          "",
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 80),
                    child: Center(
                      child: SliderButton(
                        action: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        },
                        baseColor: Colors.black,
                        icon: Center(
                            child: Icon(
                          CupertinoIcons.play,
                          color: Colors.white,
                          size: 25.0,
                        )),
                        label: Text(
                          "Slide to Play",
                          style: TextStyle(
                              color: Color(0xff4a4a4a),
                              fontFamily: '2p',
                              fontSize: 10),
                        ),
                        alignLabel: Alignment(0.08, 0),
                        width: 300,
                        vibrationFlag: true,
                        backgroundColor: Colors.black,
                        highlightedColor: Colors.grey,
                        buttonColor: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            )),
      ),
    );
  }
}