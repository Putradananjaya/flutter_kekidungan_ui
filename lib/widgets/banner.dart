import 'package:flutter/material.dart';



class Banner extends StatelessWidget {
  const Banner({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
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