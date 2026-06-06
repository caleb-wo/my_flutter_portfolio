import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_portfolio_app/components.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ContactWeb extends StatefulWidget {
  @override
  State<ContactWeb> createState() => _ContactWebState();
}

class _ContactWebState extends State<ContactWeb> {
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
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
            ),
            SizedBox(height: 15.0),
            SansBold('Caleb Wolfe', 30.0),
            SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: .spaceEvenly,
              children: [
                IconButton(
                  onPressed: () async => await launchUrlString(
                    'https://www.instagram.com/ca.ma.wolfe',
                  ),
                  icon: SvgPicture.asset(
                    'assets/instagram.svg',
                    width: 35.0,
                  ),
                ),
                IconButton(
                  onPressed: () async => await launchUrlString(
                    'https://www.instagram.com/ca.ma.wolfe',
                  ),
                  icon: SvgPicture.asset(
                    'assets/twitter.svg',
                    width: 35.0,
                  ),
                ),
                IconButton(
                  onPressed: () async => await launchUrlString(
                    'https://www.github.com/caleb-wo',
                  ),
                  icon: SvgPicture.asset(
                    'assets/github.svg',
                    width: 35.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: NestedScrollView(
        headerSliverBuilder: ((context, innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 500.0,
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(
                size: 25.0,
                color: Colors.black,
              ),
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  'assets/contact_image.jpg',
                  fit: .cover,
                  filterQuality: .high,
                ),
              ),
              title: Row(
                children: [
                  Spacer(flex: 3),
                  TabsWeb(title: 'Home', route: '/'),
                  Spacer(),
                  TabsWeb(title: 'Works', route: '/works'),
                  Spacer(),
                  TabsWeb(title: 'Blog', route: '/blog'),
                  Spacer(),
                  TabsWeb(title: 'About', route: '/about'),
                  Spacer(),
                  TabsWeb(title: 'Contact', route: '/contact'),
                  Spacer(),
                ],
              ),
            ),
          ];
        }),
        body: SingleChildScrollView(),
      ),
    );
  }
}
