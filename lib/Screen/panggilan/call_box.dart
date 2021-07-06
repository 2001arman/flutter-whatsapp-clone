import 'package:flutter/material.dart';

class CallBox extends StatelessWidget {
  final String gambar, nama, tanggal;
  final bool diterima;
  const CallBox({
    Key? key,
    required this.gambar,
    required this.nama,
    required this.tanggal,
    this.diterima = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 60,
                  height: 60,
                  margin: EdgeInsets.only(right: 15),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("$gambar"),
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "$nama",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Icon(
                              Icons.arrow_downward,
                              color: diterima ? Colors.green : Colors.red,
                              size: 16,
                            ),
                            SizedBox(width: 5),
                            Text(
                              "$tanggal",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 40,
                  padding: EdgeInsets.symmetric(vertical: 18),
                  child: Icon(
                    Icons.call,
                    color: Colors.green[800],
                    size: 25,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey.withOpacity(0.7),
            thickness: 0.4,
            indent: 90,
            endIndent: 15,
            height: 0,
          )
        ],
      ),
    );
  }
}
