import 'package:book_mate/utils/app_layout.dart';
import 'package:book_mate/utils/app_style.dart';
import 'package:book_mate/widgets/thick_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            // for showing blue part of the card...
            Container(
              decoration: const BoxDecoration(
                  color: Color(0xFF526799),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'BLR',
                        style:
                            Styles.textHeadline3.copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      const ThickContainer(),
                      Expanded(
                          child: Stack(
                        children: [
                          SizedBox(
                            height: 24,
                            child: LayoutBuilder(
                              builder: (BuildContext context,
                                  BoxConstraints constraints) {
                                print(
                                    'the width is ${constraints.constrainWidth()}');
                                return Flex(
                                  direction: Axis.horizontal,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate(
                                      (constraints.constrainWidth() / 6)
                                          .floor(),
                                      (index) => const SizedBox(
                                            width: 3,
                                            height: 1,
                                            child: DecoratedBox(
                                                decoration: BoxDecoration(
                                                    color: Colors.white)),
                                          )),
                                );
                              },
                            ),
                          ),
                          Center(
                              child: Transform.rotate(
                                  angle: 1.5,
                                  child: const Icon(
                                    Icons.local_airport_rounded,
                                    color: Colors.white,
                                  ))),
                        ],
                      )),
                      const ThickContainer(),
                      Expanded(child: Container()),
                      Text(
                        'MAA',
                        style:
                            Styles.textHeadline3.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  const Gap(4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          width: 100,
                          child: Text(
                            'Banglore',
                            style: Styles.textHeadline4
                                .copyWith(color: Colors.white),
                          )),
                      Text(
                        '1H',
                        style:
                            Styles.textHeadline4.copyWith(color: Colors.white),
                      ),
                      SizedBox(
                          width: 100,
                          child: Text(
                            'Chennai',
                            textAlign: TextAlign.end,
                            style: Styles.textHeadline4
                                .copyWith(color: Colors.white),
                          )),
                    ],
                  ),
                ],
              ),
            ),

            // for showing orange part of the card or ticket.....
            Container(
              color: Styles.orangeColor,
              child: Row(
                children: [
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(12)))),
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        print('The width is ${constraints.constrainWidth()}');
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(
                            (constraints.constrainWidth() / 15).floor(),
                            (index) => const SizedBox(
                              height: 1,
                              width: 5,
                              child: DecoratedBox(
                                  decoration:
                                      BoxDecoration(color: Colors.white)),
                            ),
                          ),
                        );
                      },
                    ),
                  )),
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(12)))),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21)),
                  color: Styles.orangeColor),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '1May',
                            style: Styles.textHeadline3
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            'Date',
                            style: Styles.textHeadline4
                                .copyWith(color: Colors.white),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "04:35 PM",
                            style: Styles.textHeadline2
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            'Departure time',
                            style: Styles.textHeadline4
                                .copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '13',
                            style: Styles.textHeadline3
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            'Number',
                            style: Styles.textHeadline4
                                .copyWith(color: Colors.white),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
