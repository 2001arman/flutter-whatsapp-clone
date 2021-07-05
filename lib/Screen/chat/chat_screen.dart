import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screen/chat/chat_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Column(
          children: [
            ChatBox(
                nama: "Arman",
                pesan: "yo wasap",
                gambar: "assets/images/arman.jpg"),
            ChatBox(
                nama: "Arya",
                pesan: "piye kabare man",
                gambar: "assets/images/arya.jpg"),
            ChatBox(
                nama: "Ayu Dea",
                pesan: "Ayo ngumpul",
                gambar: "assets/images/ayudea.jpg"),
            ChatBox(
                nama: "Candra",
                pesan: "Besok aja",
                gambar: "assets/images/candra.jpg"),
            ChatBox(
                nama: "David",
                pesan: "bayar utangmu",
                gambar: "assets/images/david.jpg"),
            ChatBox(
                nama: "Dimtel",
                pesan: "ayo main pabji",
                gambar: "assets/images/dimtel.jpg"),
            ChatBox(
                nama: "Dimas",
                pesan: "yo wasap",
                gambar: "assets/images/dimas.jpg"),
          ],
        ),
      ),
    );
  }
}
