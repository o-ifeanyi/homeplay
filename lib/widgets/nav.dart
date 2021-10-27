import 'package:flutter/material.dart';

class Nav extends StatelessWidget {
  final _menu = [
    {'item': 'Home', 'icon': Icons.home_rounded, 'isActive': true},
    {'item': 'Explore', 'icon': Icons.album, 'isActive': false},
    {'item': 'Albums', 'icon': Icons.grid_view, 'isActive': false},
    {'item': 'Artist', 'icon': Icons.person, 'isActive': false},
    {'item': 'Videos', 'icon': Icons.video_label, 'isActive': false},
  ];
  final _library = [
    {'item': 'Recent', 'icon': Icons.refresh},
    {'item': 'Albums', 'icon': Icons.grid_view},
    {'item': 'Favourites', 'icon': Icons.favorite},
    {'item': 'Downloads', 'icon': Icons.download_rounded},
    {'item': 'Locals', 'icon': Icons.file_copy_outlined},
  ];
  final _playlist = [
    {'item': 'Create Playlist', 'icon': Icons.refresh},
    {'item': 'American Pop', 'icon': Icons.grid_view},
    {'item': 'American Rnb', 'icon': Icons.favorite},
    {'item': 'Nigerian Hits', 'icon': Icons.download_rounded},
    {'item': 'Locals', 'icon': Icons.file_copy_outlined},
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Color(0xFF121212),
            Color(0xFF020202),
          ])),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 30),
              child: Row(
                children: [
                  Text(
                    'HomePlay',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(width: 5),
                  PlayButton(color: Color(0xFFFE0024), size: 10),
                ],
              ),
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Text('MENU', style: TextStyle(fontSize: 11)),
            ),
            ..._menu
                .map(
                  (e) => FlatButton.icon(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 40),
                    textColor: e['isActive']
                        ? Theme.of(context).primaryColor
                        : Colors.white,
                    icon: Icon(
                      e['icon'],
                      color: e['isActive']
                          ? Theme.of(context).primaryColor
                          : Colors.white,
                      size: 12,
                    ),
                    label: Text(e['item'], style: TextStyle(fontSize: 10)),
                    onPressed: () {},
                  ),
                )
                .toList(),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Text('LIBRARY', style: TextStyle(fontSize: 11)),
            ),
            ..._library
                .map(
                  (e) => FlatButton.icon(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 40),
                    icon: Icon(
                      e['icon'],
                      size: 12,
                    ),
                    label: Text(e['item'], style: TextStyle(fontSize: 10)),
                    onPressed: () {},
                  ),
                )
                .toList(),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Text('PLAYLIST', style: TextStyle(fontSize: 11)),
            ),
            ..._playlist
                .map(
                  (e) => FlatButton.icon(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 40),
                    icon: SizedBox(
                      height: 10,
                      width: 10,
                      child: PlayButton(color: Colors.white, size: 6),
                    ),
                    label: Text(e['item'], style: TextStyle(fontSize: 10)),
                    onPressed: () {},
                  ),
                )
                .toList(),
            SizedBox(height: 50),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              decoration: BoxDecoration(
                color: Color(0xFF121212),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.pie_chart,
                    color: Theme.of(context).primaryColor,
                  ),
                  SizedBox(width: 5),
                  Text('5.6GB out of 128GB', style: TextStyle(fontSize: 11))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PlayButton extends StatelessWidget {
  const PlayButton({this.color, this.size});

  final Color color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6),
      child: Center(
          child: Icon(
        Icons.play_arrow,
        size: size,
      )),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(2),
      ),
    );
  }
}
