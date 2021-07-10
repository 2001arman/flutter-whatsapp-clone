import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screen/chat/chat_screen/isi_chat.dart';
import 'package:whatsapp_clone/widgets/avatar_images.dart';

class ChatBox extends StatelessWidget {
  final String nama, pesan, gambar;
  const ChatBox({
    Key? key,
    required this.nama,
    required this.pesan,
    required this.gambar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (builder) => IsiChat()));
      },
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                AvatarImages(gambar: gambar),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "$nama",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "$pesan",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "22.20",
                            style: TextStyle(fontSize: 13),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
            thickness: 0.5,
            indent: 103,
            endIndent: 15,
            height: 0,
          )
        ],
      ),
    );
  }
}
