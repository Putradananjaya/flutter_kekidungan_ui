import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class JudulMenu extends StatelessWidget {
  final String judulKanan;
  final String judulKiri;

  const JudulMenu({
    Key? key,
    required this.judulKanan,
    required this.judulKiri,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            judulKiri,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Text(
              judulKanan,
              style: GoogleFonts.poppins(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
          )
        ],
      ),
    );
  }
}
