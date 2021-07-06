import 'package:flutter/material.dart';

class StatusBox extends StatelessWidget {
  const StatusBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Stack(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      // margin: EdgeInsets.only(right: 20),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/arman.jpg"),
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        width: 23,
                        height: 23,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/icons/plus.png"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 10),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Status Saya",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(height: 7),
                      Text(
                        "Ketuk untuk menambahkan pembaruan",
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromRGBO(0, 0, 0, 0.6),
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 9),
          height: 35,
          decoration: BoxDecoration(
            color: Color.fromRGBO(211, 211, 211, 0.3),
            border: Border(
              top: BorderSide(color: Colors.grey.withOpacity(0.7), width: 0.4),
            ),
          ),
          child: Text(
            "Pembaruan terkini",
            style: TextStyle(
              color: Colors.black.withOpacity(0.6),
            ),
          ),
        ),
      ],
    );
  }
}
