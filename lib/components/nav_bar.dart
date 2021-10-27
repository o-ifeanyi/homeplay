import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          ...['MUSIC', 'LIVE', 'PODCAST']
              .map(
                (e) => Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Text(
                    e,
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight:
                            e == 'MUSIC' ? FontWeight.w700 : FontWeight.w400,
                        color: e == 'MUSIC'
                            ? Theme.of(context).primaryColor
                            : Colors.grey),
                  ),
                ),
              )
              .toList(),
          Spacer(),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            alignment: Alignment.center,
            height: 30,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xFF1A1A1A),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 5, 10),
              child: TextField(
                decoration: InputDecoration(
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Icon(Feather.search, size: 18),
                    ),
                    hintText: 'Type your search here',
                    hintStyle: TextStyle(color: Color(0xFF5F5F5F), fontSize: 11),
                    border: InputBorder.none),
              ),
            ),
          ),
          Spacer(),
          Stack(
            children: [
              IconButton(
                icon: Icon(Icons.notifications_rounded, size: 18),
                onPressed: () {},
              ),
              Positioned(
                right: 12,
                top: 10,
                child: Container(
                  padding: EdgeInsets.all(2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red,
                  ),
                  constraints: BoxConstraints(
                    minWidth: 3,
                    minHeight: 3,
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 1,
                  ),
                ),
              )
            ],
          ),
          IconButton(
            icon: Icon(
              Icons.settings,
              size: 18,
            ),
            onPressed: () {},
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: CircleAvatar(
              radius: 15,
              backgroundImage: AssetImage('images/0.jpeg'),
            ),
          ),
          Text(
            'Taylor Hernandez',
            style: TextStyle(fontSize: 11),
          )
        ],
      ),
    );
  }
}