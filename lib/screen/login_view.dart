import 'package:book_mate/utils/app_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(21)),
      height: 300,
      width: 380,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Gap(30),
          Container(
            margin: const EdgeInsets.only(left: 15, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Login',
                  style: Styles.textHeadline1
                      .copyWith(color: Colors.black, fontSize: 28),
                ),
                const Gap(25),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.call,
                        color: Styles.primaryColour,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          width: 2,
                          color: Styles.primaryColour,
                        ),
                      ),
                      label: const Text('Enter Phone Number'),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11))),
                ),
                const Gap(50),
                SizedBox(
                  height: 50,
                  width: 350,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Styles.purpleColor, // Button color
                      foregroundColor: Colors.white, // Text color
                      minimumSize: const Size(100, 100), // Square size
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(11), // Square corners
                      ),
                    ),
                    child: Text(
                      'Login',
                      style: Styles.textHeadline3.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
