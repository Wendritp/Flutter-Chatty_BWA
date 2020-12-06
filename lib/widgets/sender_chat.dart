import 'package:chatty_bwa/theme.dart';
import 'package:flutter/material.dart';

class SenderChat extends StatelessWidget {
  final String imageUrl;
  final String text;
  final String time;

  SenderChat(this.imageUrl, this.text, this.time);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Flexible(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              decoration: BoxDecoration(
                color: Color(0xffEBEFF3),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    text,
                    style: TextStyle(
                      color: Color(0xff505C6B),
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.end,
                  ),
                  Text(
                    time,
                    style: subtitleTextStyle,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Image.asset(
            imageUrl,
            width: 40,
            height: 40,
          ),
        ],
      ),
    );
  }
}
