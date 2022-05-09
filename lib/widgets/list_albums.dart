import 'package:flutter/material.dart';


class ListAlbums extends StatelessWidget {
  final String image;
  const ListAlbums({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20, top: 20),
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(29),
        image: DecorationImage(
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.5),
            BlendMode.darken,
          ),
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
