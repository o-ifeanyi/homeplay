import 'package:flutter/material.dart';

import 'widgets/nav.dart';
import 'widgets/body.dart';

class HomePlay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Nav(),
            ),
            Expanded(
              flex: 7,
              child: Body(),
            ),
          ],
        ),
      ),
    );
  }
}
