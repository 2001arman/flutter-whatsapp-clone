import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new SliverAppBar(
      title: Text(
        "WhatsApp",
        style: TextStyle(fontWeight: FontWeight.w500),
      ),
      backgroundColor: Color.fromRGBO(7, 94, 85, 1),
      floating: true,
      pinned: true,
      snap: true,
      actions: [
        IconButton(
          icon: Icon(Icons.search, color: Colors.white),
          onPressed: () {},
        ),
        SizedBox(width: 5),
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/menu.svg",
            color: Colors.white,
            width: 20,
          ),
          onPressed: () {},
        ),
        SizedBox(width: 5),
      ],
      bottom: TabBar(
        indicatorColor: Colors.white,
        indicatorPadding: EdgeInsets.zero,
        labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
        indicatorSize: TabBarIndicatorSize.tab,
        isScrollable: true,
        unselectedLabelColor: Color.fromRGBO(255, 255, 255, 0.5),
        tabs: [
          Tab(
            icon: Icon(
              Icons.camera_alt,
              color: Color.fromRGBO(255, 255, 255, 0.5),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: Tab(text: 'CHAT'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: Tab(text: 'STATUS'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: Tab(text: 'PANGGILAN'),
          ),
        ],
      ),
    );
  }
}
