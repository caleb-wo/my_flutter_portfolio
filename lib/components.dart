import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TabsWeb extends StatefulWidget {
  final String title;
  const TabsWeb(this.title, {super.key});

  @override
  State<TabsWeb> createState() => _TabsWebState();
}

class _TabsWebState extends State<TabsWeb> {
  var isSelected = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isSelected = true),
      onExit: (_) => setState(() => isSelected = false),
      child: AnimatedDefaultTextStyle(
        curve: Curves.easeInOut,
        duration: const Duration(milliseconds: 145),
        style: isSelected
            ? GoogleFonts.abel(
                color: Colors.black,
                fontSize: 23.0,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                decorationThickness: 1,
                decorationColor: Colors.amberAccent,
                backgroundColor: Colors.amber[50],
                letterSpacing: 1.2,
              )
            : GoogleFonts.abel(color: Colors.black, fontSize: 20.0),

        child: Text(widget.title),
      ),
    );
  }
}

class TabsMobile extends StatefulWidget {
  final String text;
  final String route;

  TabsMobile({
    super.key,
    required this.text,
    required this.route,
  });

  @override
  createState() => _TabsMobileState();
}

class _TabsMobileState extends State<TabsMobile> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 20.0,
      shape: RoundedRectangleBorder(
        borderRadius: .circular(5.0),
      ),
      height: 50.0,
      minWidth: 100.0,
      color: Colors.black,
      onPressed: () => null,
      child: Text(
        widget.text,
        style: GoogleFonts.openSans(fontSize: 20.0, color: Colors.white),
      ),
    );
  }
}

class SansBold extends StatelessWidget {
  const SansBold(this.content, this.size, {super.key});
  final String content;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: GoogleFonts.openSans(
        fontSize: size,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class Sans extends StatelessWidget {
  const Sans(this.content, this.size, {super.key});
  final String content;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: GoogleFonts.openSans(
        fontSize: size,
      ),
    );
  }
}

class TextForm extends StatelessWidget {
  TextForm({
    super.key,
    required this._width,
    required this._heading,
    required this._hint,
    int? maxLines,
  }) : _lines = maxLines ?? 1;

  final String _heading;
  final String _hint;
  final double _width;
  final int _lines;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Sans(_heading, 15.0),
        SizedBox(height: 5),
        SizedBox(
          width: _width,
          child: TextFormField(
            maxLines: _lines,
            validator: (text) {
              if (RegExp(
                r'\bcaleb\b',
                caseSensitive: false,
              ).hasMatch(text.toString())) {
                return 'Match found!';
              }
            },
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.amber,
                ),
                borderRadius: BorderRadius.circular(15.0),
              ),
              focusColor: Colors.amber,
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.amberAccent,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.redAccent,
                ),
                borderRadius: BorderRadius.circular(15.0),
              ),
              hintText: _hint,
              hintStyle: GoogleFonts.poppins(fontSize: 14),
            ),
          ),
        ),
      ],
    );
  }
}

class AnimatedCardWeb extends StatefulWidget {
  final String _imagePath;
  final String _text;
  final BoxFit? _fit;
  final bool _reverse;

  AnimatedCardWeb({
    super.key,
    required this._imagePath,
    required this._text,
    this._fit,
    this._reverse = false,
  });

  @override
  State<AnimatedCardWeb> createState() => _AnimatedCardWebState();
}

class _AnimatedCardWebState extends State<AnimatedCardWeb>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: Duration(seconds: 2),
  )..repeat(reverse: true);

  late final Animation<Offset> _animation = Tween(
    begin: widget._reverse ? Offset(0, 0.08) : Offset.zero,
    end: widget._reverse ? Offset.zero : Offset(0, 0.08),
  ).animate(_controller);

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Card(
        elevation: 30.0,
        shadowColor: Colors.amber[700],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
          side: BorderSide(color: Colors.amber, width: 2.5),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: .center,
            children: [
              Image.asset(
                widget._imagePath,
                height: 200,
                width: 200,
                fit: widget._fit,
              ),
              SizedBox(height: 10),
              SansBold(widget._text, 20.0),
              SizedBox(width: 250),
            ],
          ),
        ),
      ),
    );
  }
}

class UrlLauncher extends StatelessWidget {
  final Uri _path;
  final String _svgAssetPath;

  UrlLauncher({
    super.key,
    required String path,
    required this._svgAssetPath,
  }) : _path = Uri.parse(path);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: SvgPicture.asset(_svgAssetPath, width: 30.0),
      onPressed: () async => await launchUrl(_path),
    );
  }
}
