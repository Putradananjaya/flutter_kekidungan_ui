import 'dart:math';

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import '../models/song.dart';
import '../widgets/bottom_bar_music.dart';
import '../widgets/judul_menu.dart';
import '../widgets/list_albums.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        brightness: Brightness.light,
        elevation: 0,
        leading: Transform.rotate(
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
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Banner(size: size),
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        JudulMenu(
                          judulKiri: 'Albums',
                          judulKanan: 'See all',
                        ),

                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: <Widget>[
                              ListAlbums(
                                image: 'assets/images/meditation.jpg',
                              ),
                              ListAlbums(
                                image: 'assets/images/love.jpg',
                              ),
                              ListAlbums(
                                image: 'assets/images/relax.jpg',
                              ),
                            ],
                          ),
                        ),
                        // Banner(size: size),
                        SizedBox(
                          height: 20,
                        ),
                        JudulMenu(
                          judulKiri: 'Recently played',
                          judulKanan: 'See all',
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                height: 0.2 * size.height,
                                width: size.width * 0.8,
                                child: ListView.builder(
                                  itemCount: songs.length,
                                  itemBuilder: (context, index) =>
                                      _buildSonglistItem(
                                    title: songs[index].songName,
                                    image: songs[index].image,
                                    subtitle: songs[index].artist,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        BottomBarMusic(size: size),
                        SizedBox(
                          height: 40,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSonglistItem(
      {required String image,
      required String title,
      required String subtitle}) {
    return ListTile(
      title: Text(
        title,
        style: GoogleFonts.poppins(fontWeight: FontWeight.w700, fontSize: 16),
      ),
      subtitle: Text(subtitle, style: GoogleFonts.poppins(),),
      leading: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

class Banner extends StatelessWidget {
  const Banner({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24),
      child: Stack(
        children: <Widget>[
          Container(
            height: size.height * 0.18,
            decoration: BoxDecoration(
              image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.5), BlendMode.darken),
                  image: AssetImage('assets/images/party.jpg'),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(35),
            ),
          )
        ],
      ),
    );
  }
}
