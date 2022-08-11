// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Profile"),
      ),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,

            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Expanded(
                child: Image(
                  image: AssetImage('assets/mountain.jpg'),
                  width: double.infinity,
                ),
              ),
              Positioned(
                bottom: -70,
                child: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 112, 102, 102),
                  radius: 75,
                  child: CircleAvatar(
                    radius: 70,
                    foregroundImage: AssetImage('assets/profile.jpg'),
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(25),
            margin: EdgeInsets.only(top: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ListTile(
                  title: Center(
                      child: Text('Norng Sovanvathanak',
                          style: TextStyle(
                            fontSize: 30,
                            height: 2,
                          ))),
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  subtitle: Center(
                    child: Text(
                      'Developer at Pied Piper. A CS student from RUPP. Creator of PiperChat & Co-founder of PiperCloud.',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(97, 108, 90, 90),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                // ListTile(
                //   contentPadding: EdgeInsets.all(-100.0),
                //   leading: Icon(Icons.email),
                //   title: Icon(Icons.reddit),
                //   trailing: Icon(Icons.umbrella),
                // )
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Icon(
                        FontAwesomeIcons.twitter,
                        size: 35,
                        color: Color.fromARGB(255, 133, 142, 144),
                      ),
                      SizedBox(
                        width: 35,
                      ),
                      Icon(
                        FontAwesomeIcons.reddit,
                        size: 30,
                        color: Color.fromARGB(255, 133, 142, 144),
                      ),
                      SizedBox(
                        width: 35,
                      ),
                      Icon(
                        FontAwesomeIcons.github,
                        size: 30,
                        color: Color.fromARGB(255, 133, 142, 144),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
