import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GreetingCard extends StatelessWidget {
  const GreetingCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.width;
    var textSize = (size >= 600) ? 32.0 : 14.0;

    return Padding(
      padding: const EdgeInsets.only(
        top: 8.0,
        left: 24.0,
        right: 24.0,
      ),
      child: AspectRatio(
        aspectRatio: 4 / 1.5,
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/header.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(8.0),
            ),
          ),
          child: Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.4),
              borderRadius: const BorderRadius.all(
                Radius.circular(8.0),
              ),
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Jadikan harimu',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: textSize,
                        color: Colors.white),
                  ),
                  Text(
                    'dengan secangkir kopi.',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300,
                        fontSize: textSize,
                        color: Colors.white),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
