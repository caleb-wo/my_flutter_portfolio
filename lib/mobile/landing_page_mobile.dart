import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio_app/components.dart';
import 'package:url_launcher/url_launcher_string.dart';

class LandingPageMobile extends StatefulWidget {
  LandingPageMobile();

  @override
  State<LandingPageMobile> createState() {
    return _LandingPageMobileState();
  }
}

class _LandingPageMobileState extends State<LandingPageMobile> {
  Widget amberContainer(String text) {
    return Container(
      padding: EdgeInsets.all(7.0),
      decoration: BoxDecoration(
        border: .all(
          color: Colors.amber,
          style: .solid,
          width: 2.0,
        ),
        borderRadius: .circular(5.0),
      ),
      child: Text(
        text,
        style: GoogleFonts.openSans(fontSize: 15.0),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(
          size: 35.0,
          color: Colors.black,
        ),
      ),
      endDrawer: Drawer(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            DrawerHeader(
              padding: EdgeInsets.only(bottom: 20.0),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  shape: .circle,
                  border: .all(width: 2.0, color: Colors.black),
                ),
                child: CircleAvatar(
                  radius: 65.0,
                  backgroundImage: AssetImage('assets/main_headshot.webp'),
                ),
              ),
            ),
            TabsMobile(text: 'Home', route: '/'),
            SizedBox(height: 20.0),
            TabsMobile(text: 'Works', route: '/works'),
            SizedBox(height: 20.0),
            TabsMobile(text: 'Blog', route: '/blog'),
            SizedBox(height: 20.0),
            TabsMobile(text: 'About', route: '/about'),
            SizedBox(height: 20.0),
            TabsMobile(text: 'Contact', route: '/contact'),
            SizedBox(height: 40.0),
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
                    'https://github.com/caleb-wo',
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
      body: ListView(
        children: [
          // Intro: First Section
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              crossAxisAlignment: .center,
              children: [
                CircleAvatar(
                  radius: 117.0,
                  backgroundColor: Colors.amberAccent,
                  child: CircleAvatar(
                    radius: 110.0,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/main_headshot.webp'),
                  ),
                ),
                SizedBox(height: 20.0),
                Divider(),
                SizedBox(height: 20.0),
                Column(
                  crossAxisAlignment: .start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 20.0,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.amberAccent,
                        borderRadius: .only(
                          topLeft: .circular(20.0),
                          topRight: .circular(20.0),
                          bottomRight: .circular(20.0),
                        ),
                      ),
                      child: SansBold('Hello, I am', 15.0),
                    ),
                    SansBold('Caleb Wolfe', 40.0),
                    Sans('Flutter Developer', 20.0),
                  ],
                ),
                SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: .center,
                  children: [
                    Wrap(
                      direction: .vertical,
                      spacing: 3.0,
                      children: [
                        Icon(Icons.email),
                        Icon(Icons.phone_iphone),
                        Icon(Icons.location_pin),
                      ],
                    ),
                    SizedBox(width: 40.0),
                    Wrap(
                      direction: .vertical,
                      children: [
                        Sans('caleb-wolfe@zohomail.com', 15.0),
                        Sans('(909) 641-6893', 15.0),
                        Sans('Fontana, CA | Rexburg, ID', 15.0),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 90.0),
          // About Me: Second Section
          Padding(
            padding: .symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: .center,
              mainAxisAlignment: .center,
              children: [
                SansBold('About Me', 35.0),
                Sans(
                  "Hello! I'm Caleb Wolfe and I specialize in Flutter development.",
                  15.0,
                ),
                Sans(
                  "I strive to ensure astounding performance with state of the art UIs and animations for iOS, Android, Web, Dektop, and Linux.",
                  15.0,
                ),
                SizedBox(height: 10.0),
                Wrap(
                  spacing: 7.0,
                  runSpacing: 7.0,
                  children: [
                    amberContainer('Flutter'),
                    amberContainer('Firebase'),
                    amberContainer('iOS'),
                    amberContainer('MacOS'),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 60.0),
          // What I Do: Third Section
          Column(
            crossAxisAlignment: .center,
            children: [
              SansBold('What I do', 35.0),
              AnimatedCard(
                imagePath: 'assets/webL.png',
                text: 'Web Development',
                width: 250.0,
              ),
              SizedBox(height: 35.0),
              AnimatedCard(
                imagePath: 'assets/app.png',
                text: 'Mobile Development',
                fit: BoxFit.contain,
                reverse: true,
                width: 250.0,
              ),
              SizedBox(height: 35.0),
              AnimatedCard(
                imagePath: 'assets/firebase.png',
                text: 'Full-Stack Development',
                width: 250.0,
              ),
              SizedBox(height: 60.0),
            ],
          ),
          // Contact: Fourth Section
          Wrap(
            runSpacing: 20.0,
            spacing: 20.0,
            alignment: .center,
            children: [
              SansBold('Contact Me', 35.0),
              TextForm(
                width: deviceWidth / 1.4,
                heading: 'First Name',
                hint: 'Please enter your first name.',
              ),
              TextForm(
                width: deviceWidth / 1.4,
                heading: 'Last Name',
                hint: 'Please enter your last name.',
              ),
              TextForm(
                width: deviceWidth / 1.4,
                heading: 'Email',
                hint: 'Please enter your email.',
              ),
              TextForm(
                width: deviceWidth / 1.4,
                heading: 'Phone',
                hint: 'Please enter your phone number.',
              ),
              TextForm(
                width: deviceWidth / 1.4,
                heading: 'Message',
                hint: 'Please enter a message for me.',
                maxLines: 10,
              ),
              MaterialButton(
                onPressed: () => Placeholder(),
                elevation: 20.0,
                shape: RoundedRectangleBorder(
                  borderRadius: .circular(10.0),
                ),
                height: 60.0,
                minWidth: deviceWidth / 2.2,
                color: Colors.amberAccent,
                child: SansBold('Sumbit', 20.0),
              ),
            ],
          ),
          SizedBox(height: 20.0),
        ],
      ),
    );
  }
}
