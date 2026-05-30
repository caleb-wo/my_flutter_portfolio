import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            ? GoogleFonts.oswald(
                color: Colors.black,
                fontSize: 33.0,
                decoration: TextDecoration.underline,
                decorationThickness: 1,
                decorationColor: Colors.amberAccent,
                backgroundColor: Colors.amber[50],
                letterSpacing: 1.2,
              )
            : GoogleFonts.oswald(color: Colors.black, fontSize: 30.0),

        child: Text(widget.title),
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
  const TextForm({
    super.key,
    required this._width,
    required this._heading,
    required this._hint,
    required this._lines,
  });

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
              hintText: _hint,
              hintStyle: GoogleFonts.poppins(fontSize: 14),
            ),
          ),
        ),
      ],
    );
  }
}
