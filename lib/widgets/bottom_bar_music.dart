import 'package:flutter/material.dart';
import 'package:flutter_kekidungan_02_ui/screens/song_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

class BottomBarMusic extends StatelessWidget {
  const BottomBarMusic({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => SongScreens(),
          ),
        );
      },
      child: Container(
        height: size.height * 0.103,
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/images/colors.jpg'),
            ),
            SizedBox(
              width: 10.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Rewrite the Stars',
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Zac Effron',
                  style: GoogleFonts.poppins(
                    fontStyle: FontStyle.italic,
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(),
            ),
            SizedBox(
              width: 20.0,
            ),
            Container(
              child: CircularPercentIndicator(
                radius: 50.0,
                lineWidth: 5.0,
                percent: 0.21,
                center: Icon(
                  Icons.pause_rounded,
                  size: 35,
                ),
                progressColor: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
