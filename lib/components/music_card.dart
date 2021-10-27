import 'package:flutter/material.dart';
import 'package:homeplay/widgets/nav.dart';

class MusicCard extends StatelessWidget {
  const MusicCard(
      {this.image,
      this.title,
      this.subTitle,
      this.canPlay = false,
      this.size = 100});

  final String image;
  final String title;
  final String subTitle;
  final bool canPlay;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: size,
          width: size,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
          ),
        ),
        SizedBox(height: 6),
        Text(title),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(subTitle, style: TextStyle(fontSize: 9, color: Colors.grey)),
            if (canPlay) ...[
              SizedBox(width: 2),
              SizedBox(
                height: 10,
                width: 10,
                child: PlayButton(
                  color: Theme.of(context).primaryColor,
                ),
              )
            ]
          ],
        ),
      ],
    );
  }
}
