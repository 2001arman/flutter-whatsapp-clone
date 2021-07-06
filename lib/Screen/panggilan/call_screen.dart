import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screen/panggilan/call_box.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      child: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CallBox(
                gambar: "assets/images/arman.jpg",
                nama: "Arman",
                tanggal: "Kemarin 22.40",
                diterima: false,
              ),
              CallBox(
                gambar: "assets/images/arya.jpg",
                nama: "arya",
                tanggal: "Kemarin 23.40",
              ),
              CallBox(
                gambar: "assets/images/ayudea.jpg",
                nama: "ayudea",
                tanggal: "Kemarin 23.55",
              ),
              CallBox(
                gambar: "assets/images/candra.jpg",
                nama: "candra",
                tanggal: "4 Juli 22.40",
                diterima: false,
              ),
              CallBox(
                gambar: "assets/images/david.jpg",
                nama: "david",
                tanggal: "3 Juli 22.13",
              ),
              CallBox(
                gambar: "assets/images/dimas.jpg",
                nama: "dimas",
                tanggal: "2 Juli 10.17",
                diterima: false,
              ),
              CallBox(
                gambar: "assets/images/dimtel.jpg",
                nama: "dimtel",
                tanggal: "1 Juli 23.40",
              ),
              CallBox(
                gambar: "assets/images/david.jpg",
                nama: "david",
                tanggal: "1 Juli 21.40",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
