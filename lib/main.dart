import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My Profile",
      home: Scaffold(
        backgroundColor: const Color(0xffBEDCFA),
        appBar: AppBar(
          title: const Text("My Profile"),
        ),
        body: SafeArea(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircleAvatar(
                backgroundImage: AssetImage("images/profile.png"),
                backgroundColor: Color(0xff98ACF8),
                radius: 50.0,
              ),
              Text(
                "Aung Ko Min",
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 45.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "I'm a learner",
                style: TextStyle(
                  fontFamily: "FiraCode",
                  fontSize: 20.0,
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 40.0,
                width: 150.0,
                child: Divider(
                  color: Color(0xff98ACF8),
                ),
              ),
              Card(
                color: Color(0xff98ACF8),
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 50.0,
                ),
                child: ListTile(
                  leading: FaIcon(
                    FontAwesomeIcons.telegram,
                    color: Colors.blueAccent,
                  ),
                  title: Text(
                    "https://t.me/aung_ko",
                    style: TextStyle(
                        fontFamily: "FiraCode", fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Card(
                color: Color(0xff98ACF8),
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 50.0,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.mail_outline,
                    color: Colors.white60,
                  ),
                  title: Text(
                    "aungkoo.dev@gmail.com",
                    style: TextStyle(
                        fontFamily: "FiraCode", fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
