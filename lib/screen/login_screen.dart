import 'package:book_mate/screen/bottom_screen.dart';
import 'package:book_mate/screen/login_view.dart';
import 'package:book_mate/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Styles.primaryColour,
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 70),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            margin: const EdgeInsets.only(left: 20, right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Welcome',
                                  style: Styles.textHeadline1.copyWith(
                                      fontSize: 37, color: Colors.white),
                                ),
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      image: const DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                              'assets/images/logo.png'))),
                                )
                              ],
                            )),
                        Container(
                          margin: const EdgeInsets.only(left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hey,',
                                style: Styles.textHeadline2.copyWith(
                                    fontSize: 30, color: Colors.white),
                              ),
                              Text(
                                'Login Here.',
                                style: Styles.textHeadline2.copyWith(
                                    fontSize: 30, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 250,
                    width: 380,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                                'assets/images/flight_illustration.png'))),
                  ),
                  const Gap(20),
                  const Center(child: LoginView()),
                ],
              ),
            ],
          )),
    );
  }
}
