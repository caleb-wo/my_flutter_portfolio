import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio_app/components.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({super.key});

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(size: 30.0, color: Colors.black),
        title: Row(
          children: [
            Spacer(flex: 3),
            TabsWeb('Home'),
            Spacer(),
            TabsWeb('Works'),
            Spacer(),
            TabsWeb('Blog'),
            Spacer(),
            TabsWeb('About'),
            Spacer(),
            TabsWeb('Contact'),
            Spacer(),
          ],
        ),
      ),
      body: ListView(
        scrollDirection: .vertical,
        children: [
          /// First page
          SizedBox(
            height: deviceHeight - 56,
            child: const Row(
              mainAxisAlignment: .spaceAround,
              children: [
                Column(
                  mainAxisAlignment: .center,
                  crossAxisAlignment: .start,
                  children: [
                    DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.amberAccent,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 20.0,
                        ),
                        child: SansBold("Hello I'm", 15.0),
                      ),
                    ),
                    SizedBox(height: 15.0),
                    SansBold('Caleb Wolfe', 55.0),
                    Sans('Flutter Developer', 30.0),
                    SizedBox(height: 15.0),
                    Row(
                      children: [
                        Icon(Icons.email),
                        SizedBox(width: 20.0),
                        Sans('caleb-wolfe@zohomail.com', 15.0),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.phone_iphone),
                        SizedBox(width: 20.0),
                        Sans('(909) 641-6893', 15.0),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.map),
                        SizedBox(width: 20.0),
                        Sans('Fontana, CA | Rexburg, ID', 15.0),
                      ],
                    ),
                  ],
                ),
                CircleAvatar(
                  backgroundColor: Colors.amberAccent,
                  radius: 158.0,
                  child: CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 153.0,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/main_headshot.webp'),
                      radius: 150.0,
                      backgroundColor: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),

          /// Second page
          SizedBox(
            height: deviceHeight / 1.5,
            child: Row(
              mainAxisAlignment: .spaceEvenly,
              crossAxisAlignment: .center,
              children: [
                Image.asset('assets/web.jpg', height: deviceHeight / 1.7),
                Column(
                  crossAxisAlignment: .start,
                  mainAxisAlignment: .center,
                  children: [
                    const SansBold('About Me', 40.0),
                    const SizedBox(height: 15),
                    const Sans(
                      "Hello! I'm Caleb Wolfe and I specialize in Flutter Development.",
                      15.0,
                    ),
                    const Sans(
                      "I strive to ensure beautiful UIs and animations with state of",
                      15,
                    ),
                    const Sans(
                      "the art security for iOS, Mac, Windows, Android, and Linux.",
                      15,
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        DecoratedBox(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.amberAccent,
                              style: .solid,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: const Sans('Flutter', 15.0),
                          ),
                        ),
                        const SizedBox(width: 7),
                        DecoratedBox(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.amberAccent,
                              style: .solid,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: const Sans('Dart', 15.0),
                          ),
                        ),
                        const SizedBox(width: 7),
                        DecoratedBox(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.amberAccent,
                              style: .solid,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: const Sans('Full-Stack', 15.0),
                          ),
                        ),
                        const SizedBox(width: 7),
                        DecoratedBox(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.amberAccent,
                              style: .solid,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: const Sans('Firebase', 15.0),
                          ),
                        ),
                        const SizedBox(width: 7),
                        DecoratedBox(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.amberAccent,
                              style: .solid,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: const Sans('JS/TS', 15.0),
                          ),
                        ),
                        const SizedBox(width: 7),
                        DecoratedBox(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.amberAccent,
                              style: .solid,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: const Sans('HTML', 15.0),
                          ),
                        ),
                        const SizedBox(width: 7),
                        DecoratedBox(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.amberAccent,
                              style: .solid,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: const Sans('CSS', 15.0),
                          ),
                        ),
                        const SizedBox(width: 7),
                        DecoratedBox(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.amberAccent,
                              style: .solid,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: const Sans('Deno', 15.0),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Third Page
          SizedBox(
            height: deviceHeight / 1.3,
            child: Column(
              mainAxisAlignment: .spaceEvenly,
              children: [
                SansBold('What I do?', 40),
                Row(
                  mainAxisAlignment: .spaceEvenly,
                  children: [
                    Card(
                      elevation: 30.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: .start,
                          children: [
                            Image.asset(
                              'assets/webL.png',
                              height: 200,
                              width: 200,
                            ),
                            SizedBox(height: 10),
                            SansBold('Web Development', 20.0),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 30.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: .start,
                          children: [
                            Image.asset(
                              'assets/app.png',
                              height: 200,
                              width: 200,
                              fit: .contain,
                            ),
                            SizedBox(height: 10),
                            SansBold('Mobile Development', 20.0),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 30.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: .center,
                          children: [
                            Image.asset(
                              'assets/firebase.png',
                              height: 200,
                              width: 200,
                            ),
                            SizedBox(height: 10),
                            SansBold('Backend Development', 20.0),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Fourth Page
          SizedBox(
            height: deviceHeight,
            child: Column(
              mainAxisAlignment: .spaceEvenly,
              children: [
                SansBold('Contact Me', 40.0),
                Row(
                  mainAxisAlignment: .spaceEvenly,
                  children: [
                    Column(
                      children: [
                        TextForm(
                          width: 350.0,
                          heading: 'First Name',
                          hint: 'Please enter your first name.',
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
