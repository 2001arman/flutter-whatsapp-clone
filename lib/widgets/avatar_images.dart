import 'package:flutter/material.dart';

class AvatarImages extends StatelessWidget {
  final double ukuran;
  const AvatarImages({
    Key? key,
    required this.gambar,
    this.ukuran = 60,
  }) : super(key: key);

  final String gambar;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ukuran,
      height: ukuran,
      margin: EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("$gambar"),
        ),
        shape: BoxShape.circle,
      ),
    );
  }
}
