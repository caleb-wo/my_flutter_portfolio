import 'package:flutter/material.dart';

class ContactWeb extends StatefulWidget {
  @override
  State<ContactWeb> createState() => _ContactWebState();
}

class _ContactWebState extends State<ContactWeb> {
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          mainAxisAlignment: .center,
          children: [
            CircleAvatar(
              radius: 77.0,
              backgroundColor: Colors.amberAccent,
              child: CircleAvatar(
                radius: 72.0,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/main_headshot.webp'),
              ),
            )
          ],
        ),
      )
    );
  }
}
