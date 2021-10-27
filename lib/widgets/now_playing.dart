import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  final navs = [
    {'item': 'Top Up', 'icon': Icons.account_balance_wallet_rounded},
    {'item': 'Pay', 'icon': Icons.payment_rounded},
    {'item': 'Send', 'icon': Icons.send_rounded},
    {'item': 'Profile', 'icon': Icons.arrow_downward_rounded},
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(15, 30, 15, 20),
      child: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Spacer(),
                    IconButton(
                      icon: Icon(
                        Icons.settings,
                        color: Color(0xFF9C9ACB),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.clear_rounded,
                        color: Color(0xFF9C9ACB),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                Text(
                  'Jonas Kanwald',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: navs
                      .map((e) => Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: Color(0xFFE1E0F1),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Icon(
                                  e['icon'],
                                  size: 18,
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(e['item'])
                            ],
                          ))
                      .toList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
