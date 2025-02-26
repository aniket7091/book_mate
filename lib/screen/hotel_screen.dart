import 'package:book_mate/utils/app_layout.dart';
import 'package:book_mate/utils/app_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size = AppLayout.getSize(context);
    return Container(
      width: Size.width * 0.6,
      height: 390,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
          color: Styles.primaryColour,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade200, spreadRadius: 5, blurRadius: 20)
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
                color: Styles.primaryColour,
                borderRadius: BorderRadius.circular(12),
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://images.trvl-media.com/lodging/23000000/22270000/22261300/22261263/d063b6ab.jpg?impolicy=resizecrop&rw=1200&ra=fit'))),
          ),
          const Gap(15),
          Text(
            'Holiday Residency',
            style: Styles.textHeadline1.copyWith(color: Colors.white),
          ),
          Text(
            'Chennai Andavar Temple',
            style: Styles.textHeadline4.copyWith(color: Colors.white),
          ),
          const Gap(15),
          Text(
            '₹7500',
            style: Styles.textHeadline1.copyWith(color: Colors.white),
          )
        ],
      ),
    );
  }
}
