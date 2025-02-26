import 'package:book_mate/screen/ticket_view.dart';
import 'package:book_mate/utils/app_style.dart';
import 'package:book_mate/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/thick_container.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Styles.bgColour,
        body: Stack(
          children: [
            ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              children: [
                const Gap(40),
                Text(
                  'Tickets',
                  style: Styles.textHeadline1.copyWith(fontSize: 34),
                ),
                const Gap(20),
                const AppTicketsTabs(
                  firstTab: 'Upcoming',
                  secondTab: 'privious',
                ),
                const Gap(20),
                Container(
                  padding: const EdgeInsets.only(left: 15),
                  child: Container(
                    margin: const EdgeInsets.only(right: 16),
                    child: Column(
                      children: [
                        // for showing blue part of the card...
                        Container(
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(21),
                                  topRight: Radius.circular(21))),
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text('BLR',
                                      style: Styles.textHeadline5.copyWith(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500)),
                                  Expanded(child: Container()),
                                  Container(
                                    padding: const EdgeInsets.all(3.0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          width: 2.5,
                                          color: Colors.lightBlueAccent),
                                    ),
                                  ),
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
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              mainAxisSize: MainAxisSize.max,
                                              children: List.generate(
                                                  (constraints.constrainWidth() /
                                                          6)
                                                      .floor(),
                                                  (index) => const SizedBox(
                                                        width: 3,
                                                        height: 1,
                                                        child: DecoratedBox(
                                                            decoration:
                                                                BoxDecoration(
                                                                    color: Colors
                                                                        .black26)),
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
                                                color: Colors.lightBlueAccent,
                                              ))),
                                    ],
                                  )),
                                  Container(
                                    padding: const EdgeInsets.all(3.0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          width: 2.5,
                                          color: Colors.lightBlueAccent),
                                    ),
                                  ),
                                  Expanded(child: Container()),
                                  Text('MAA',
                                      style: Styles.textHeadline5.copyWith(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500)),
                                ],
                              ),
                              const Gap(4),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                      width: 100,
                                      child: Text('Banglore',
                                          style: Styles.textHeadline4)),
                                  Text('1H',
                                      style: Styles.textHeadline4.copyWith(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500)),
                                  SizedBox(
                                      width: 100,
                                      child: Text('Chennai',
                                          textAlign: TextAlign.end,
                                          style: Styles.textHeadline4)),
                                ],
                              ),
                            ],
                          ),
                        ),

                        // for showing orange part of the card or ticket.....
                        Container(
                          color: Colors.white,
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
                                  builder: (BuildContext context,
                                      BoxConstraints constraints) {
                                    print(
                                        'The width is ${constraints.constrainWidth()}');
                                    return Flex(
                                      direction: Axis.horizontal,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      mainAxisSize: MainAxisSize.max,
                                      children: List.generate(
                                        (constraints.constrainWidth() / 15)
                                            .floor(),
                                        (index) => const SizedBox(
                                          height: 1,
                                          width: 5,
                                          child: DecoratedBox(
                                              decoration: BoxDecoration(
                                                  color: Colors.black26)),
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
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(21),
                                  bottomRight: Radius.circular(21)),
                              color: Colors.white),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '1May',
                                        style: Styles.textHeadline3.copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        'Date',
                                        style: Styles.textHeadline4,
                                      )
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "04:35 PM",
                                        style: Styles.textHeadline2
                                            .copyWith(color: Colors.black),
                                      ),
                                      Text(
                                        'Departure time',
                                        style: Styles.textHeadline4,
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        '13',
                                        style: Styles.textHeadline3
                                            .copyWith(color: Colors.black),
                                      ),
                                      Text(
                                        'Number',
                                        style: Styles.textHeadline4,
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
