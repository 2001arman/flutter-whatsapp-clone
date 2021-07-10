import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whatsapp_clone/widgets/avatar_images.dart';

class IsiChat extends StatelessWidget {
  const IsiChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        leadingWidth: 108,
        backgroundColor: Color.fromRGBO(7, 94, 85, 1),
        leading: Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back),
            ),
            AvatarImages(
              gambar: "assets/images/arman.jpg",
              ukuran: 40,
            ),
          ],
        ),
        title: Text("Arman"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.video_call_rounded,
              size: 25,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.call,
              size: 25,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/menu.svg",
              color: Colors.white,
              width: 20,
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            bottom: 5,
            left: 3,
            right: 3,
            child: Container(
              width: double.infinity,
              height: 50,
              // color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    height: 50,
                    width: size.width * 0.8,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.emoji_emotions_outlined,
                          color: Colors.grey,
                          size: 28,
                        ),
                        SizedBox(width: 5),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Ketik pesan",
                              border: InputBorder.none,
                              hintStyle: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                        SvgPicture.asset(
                          "assets/icons/paper_clip.svg",
                          color: Colors.grey,
                          width: 25,
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.camera_alt,
                          color: Colors.grey,
                          size: 27,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: size.width * 0.13,
                    height: size.height * 0.13,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(7, 94, 85, 1),
                    ),
                    child: Icon(Icons.mic, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
