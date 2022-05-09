import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_kekidungan_02_ui/models/song.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class SongScreens extends StatelessWidget {
  const SongScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int selectedSongIndex;
    1;
    return Scaffold(
      extendBodyBehindAppBar: true,
      // backgroundColor: Colors.white,
      appBar: _buildSongAppBar(),
      body: _buildSongBody(),
      bottomNavigationBar: SizedBox(
          height: 120,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.shuffle,
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.fast_rewind),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.pause_circle,
                      size: 60,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(Icons.fast_forward),
                  ],
                ),
                InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.toc,
                  ),
                ),
              ],
            ),
          )),
    );
  }

  SizedBox _buildSongBody() {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: 275,
                height: 390,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Kidung Wargasari',
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Ida Bhawati Gde Suanda',
                      style: GoogleFonts.poppins(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 15.0, left: 20.0, right: 20.0, bottom: 15.0),
                      child: Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black45,
                      offset: Offset(0, 20),
                      blurRadius: 30,
                      spreadRadius: 0,
                    ),
                  ],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(200),
                    bottomRight: Radius.circular(200),
                  ),
                  image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.6), BlendMode.multiply),
                    image: AssetImage(
                      'assets/images/meditation.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: -45,
                left: -40,
                child: SleekCircularSlider(
                  min: 0,
                  max: 4,
                  initialValue: 2,
                  appearance: CircularSliderAppearance(
                    size: 360,
                    counterClockwise: true,
                    startAngle: 150,
                    angleRange: 120,
                    customWidths: CustomSliderWidths(
                      trackWidth: 3,
                      progressBarWidth: 10,
                      shadowWidth: 0,
                    ),
                    customColors: CustomSliderColors(
                      trackColor: Colors.black12,
                      progressBarColor: Colors.black,
                    ),
                    infoProperties: InfoProperties(
                      mainLabelStyle: TextStyle(
                        color: Colors.transparent,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: songs.length,
              itemBuilder: ((context, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                    left: 60.0,
                    right: 60.0,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${songs[index].songName}",
                          style: GoogleFonts.lato(
                            textStyle: TextStyle(
                              color: Colors.black87,
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Text(
                          "${songs[index].duration}",
                          style: GoogleFonts.lato(
                            textStyle: TextStyle(
                              color: Colors.black87,
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }

  AppBar _buildSongAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: IconButton(
        icon: Icon(
          Icons.chevron_left_rounded,
          color: Colors.black,
          size: 35,
        ),
        onPressed: () {},
      ),
      actions: [
        Transform.rotate(
          angle: (270 / (180 / pi)),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.bar_chart,
              color: Colors.black,
              size: 35,
            ),
          ),
        )
      ],
    );
  }
}
