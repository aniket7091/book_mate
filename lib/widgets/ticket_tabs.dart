import 'package:book_mate/utils/app_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_style.dart';

class AppTicketsTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketsTabs(
      {super.key, required this.firstTab, required this.secondTab});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: const EdgeInsets.all(3.5),
        decoration: BoxDecoration(
          color: const Color(0xFFF4F6FD),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          children: [
            // for Airline
            Container(
              padding: const EdgeInsets.symmetric(vertical: 7),
              width: size.width * 0.44,
              decoration: const BoxDecoration(
                  borderRadius:
                      BorderRadius.horizontal(left: Radius.circular(50)),
                  color: Colors.white),
              child: Center(
                  child: Text(
                firstTab,
                style: Styles.textStyle,
              )),
            ),
            // for hotels
            Container(
              padding: const EdgeInsets.symmetric(vertical: 7),
              width: size.width * 0.44,
              decoration: const BoxDecoration(
                color: Colors.transparent,
                borderRadius:
                    BorderRadius.horizontal(right: Radius.circular(50)),
              ),
              child: Center(
                  child: Text(
                secondTab,
                style: Styles.textStyle,
              )),
            ),
          ],
        ),
      ),
    );
  }
}
