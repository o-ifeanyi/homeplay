import 'package:flutter/material.dart';
import 'package:homeplay/components/music_card.dart';
import 'package:homeplay/components/nav_bar.dart';
import 'package:homeplay/util/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: Colors.black,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NavBar(),
            Stack(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Trending', style: TextStyle(fontSize: 11)),
                              SizedBox(height: 5),
                              Text(
                                'Godly',
                                style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text('Omah Lay', style: TextStyle(fontSize: 10)),
                              SizedBox(height: 11),
                              Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 8),
                                    decoration: BoxDecoration(
                                        color: Theme.of(context).primaryColor,
                                        borderRadius: BorderRadius.circular(6)),
                                    child: Row(
                                      children: [
                                        Text('Play Now',
                                            style: TextStyle(fontSize: 10)),
                                            SizedBox(width: 7),
                                        Icon(Icons.play_arrow, size: 12)
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(6)),
                                    child: Icon(Icons.add,
                                        size: 16, color: Colors.black),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Image.asset('images/9.png', scale: 1.2),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(10, 200, 10, 0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 5,
                          child: Column(
                            children: [
                              Container(
                                height: 190,
                                decoration: BoxDecoration(
                                  color: Color(0xFF111111),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Top Artist',
                                              style: TextStyle(fontSize: 10)),
                                          Text('See All',
                                              style: TextStyle(
                                                  fontSize: 8,
                                                  color: Colors.grey)),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        ...topArtist
                                            .map((e) => MusicCard(
                                                  image: e.image,
                                                  title: e.title,
                                                  subTitle: e.subTitle,
                                                ))
                                            .toList(),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 15),
                              Container(
                                height: 200,
                                decoration: BoxDecoration(
                                  color: Color(0xFF111111),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Billboard Topchart',
                                              style: TextStyle(fontSize: 10)),
                                          Text('See All',
                                              style: TextStyle(
                                                  fontSize: 8,
                                                  color: Colors.grey)),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        ...topChart
                                            .map((e) => MusicCard(
                                                  image: e.image,
                                                  title: e.title,
                                                  subTitle: e.subTitle,
                                                  canPlay: true,
                                                ))
                                            .toList(),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 5),
                        Expanded(
                          flex: 3,
                          child: Container(
                            height: 405,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Color(0xFF111111),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Now Playing',
                                        style: TextStyle(fontSize: 10)),
                                    Icon(
                                      Icons.playlist_play,
                                      size: 18,
                                    ),
                                  ],
                                ),
                                MusicCard(
                                  image: 'images/5.jpeg',
                                  title: 'Wizkid',
                                  subTitle: 'Made in lagos',
                                  size: 150,
                                ),
                                Slider(
                                  min: 0,
                                  max: 100,
                                  value: 18,
                                  onChanged: (newValue) {},
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Icon(Icons.repeat, size: 12),
                                    Icon(Icons.skip_previous, size: 12),
                                    Container(
                                      padding: const EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                          color: Theme.of(context).primaryColor,
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: Icon(Icons.play_arrow, size: 16),
                                    ),
                                    Icon(Icons.skip_next, size: 12),
                                    Icon(Icons.shuffle, size: 12),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Icon(Icons.keyboard_arrow_up_outlined,
                                        size: 10),
                                    Text(
                                      'LYRICS',
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
