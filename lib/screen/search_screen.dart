import 'package:book_mate/utils/app_layout.dart';
import 'package:book_mate/utils/app_style.dart';
import 'package:book_mate/widgets/ticket_tabs.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColour,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const Gap(40),
          Text(
            'What are\nyou looking for?',
            style: Styles.textHeadline1.copyWith(fontSize: 35),
          ),
          const Gap(20),
          const AppTicketsTabs(
            firstTab: 'Airline Tickets',
            secondTab: 'Hotels',
          ),
          const Gap(25),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Colors.white),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.flight_takeoff_rounded,
                      color: Colors.grey,
                    ),
                    label: const Text('Departure'),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide:
                            const BorderSide(width: 2, color: Colors.black26)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide:
                            BorderSide(width: 2, color: Styles.purpleColor)),
                  ),
                ),
              ),
              const Gap(25),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Colors.white),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.flight_land,
                      color: Colors.grey,
                    ),
                    label: const Text('Arrival'),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide:
                            const BorderSide(width: 2, color: Colors.black26)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide:
                            BorderSide(width: 2, color: Styles.purpleColor)),
                  ),
                ),
              ),
              const Gap(25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // for departure date
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: Colors.white),
                    height: 55,
                    width: 190,
                    child: TextField(
                      decoration: InputDecoration(
                          label: const Text('Depart On'),
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 2, color: Colors.black26),
                              borderRadius: BorderRadius.circular(11)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: BorderSide(
                                  width: 2, color: Styles.purpleColor))),
                    ),
                  ),
                  // for No. of travellers
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: Colors.white),
                    height: 55,
                    width: 190,
                    child: TextField(
                      decoration: InputDecoration(
                          label: const Text('Travellers'),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: const BorderSide(
                                  width: 2, color: Colors.black26)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2, color: Styles.purpleColor),
                              borderRadius: BorderRadius.circular(11))),
                    ),
                  ),
                ],
              ),
              const Gap(25),

              // for elevated button find ticket

              SizedBox(
                height: 55,
                width: 400,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xD91130DE), // Button color
                    foregroundColor: Colors.white, // Text color
                    minimumSize: const Size(100, 100), // Square size
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11), // Square corners
                    ),
                  ),
                  child: Text(
                    'Find tickets',
                    style: Styles.textHeadline3.copyWith(color: Colors.white),
                  ),
                ),
              ),
              const Gap(40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Upcoming Flights',
                    style: Styles.textHeadline2,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'View all',
                        style: TextStyle(fontSize: 17),
                      ))
                ],
              ),
              const Gap(25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 16),
                    width: 190,
                    height: 350,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: Colors.white),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      'https://jayatravel.com/wp-content/uploads/elementor/thumbs/jaya-travel-tours-window-or-aisle-seat-airplane-with-passangers-and-stewardess-scaled-py5jk4rliejjzv5c60gskutusckqtltbu3qthv6xrk.jpeg')),
                              borderRadius: BorderRadius.circular(11)),
                          height: 180,
                          width: 160,
                        ),
                        const Gap(10),
                        Text(
                          '20% discount on business class Ticketsfrom Airline On International',
                          style: Styles.textHeadline5
                              .copyWith(color: Colors.black54),
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 7, horizontal: 10),
                          height: 170,
                          width: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11),
                            color: Colors.cyan,
                          ),
                          child: Column(
                            children: [
                              Text(
                                'Discount for survey',
                                style: Styles.textHeadline2.copyWith(
                                    color: Colors.white, fontSize: 24),
                              ),
                              const Gap(5),
                              Text(
                                'Take the survey about our services and get a discount',
                                style: Styles.textHeadline4.copyWith(
                                    color: Colors.white, fontSize: 17),
                              )
                            ],
                          )),
                      const Gap(10),
                      Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 7, horizontal: 10),
                          height: 170,
                          width: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11),
                            color: Colors.deepOrangeAccent,
                          ),
                          child: Column(
                            children: [
                              const Gap(10),
                              Text(
                                'Take love',
                                style: Styles.textHeadline2.copyWith(
                                    color: Colors.white, fontSize: 24),
                              ),
                              const Gap(5),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '😍',
                                    style: Styles.textHeadline2
                                        .copyWith(fontSize: 40),
                                  ),
                                  Text(
                                    '🥰',
                                    style: Styles.textHeadline2
                                        .copyWith(fontSize: 50),
                                  ),
                                  Text(
                                    '😘',
                                    style: Styles.textHeadline2
                                        .copyWith(fontSize: 40),
                                  ),
                                ],
                              )
                            ],
                          ))
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
