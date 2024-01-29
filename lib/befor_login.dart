import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/Model/Test_Style.dart';
import 'package:flutter_application_1/core/Model/appcolors.dart';
import 'package:flutter_application_1/features/profile/new_login.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gap/gap.dart';

class init_login extends StatelessWidget {
  const init_login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/back.png'),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 200,
                ),
                Text(
                  'MAKE YOUR',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: appColors.graycolor),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'HOME BEAUTIFUL',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: appColors.semibalckcolor,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                    'The best simple place where you discover most wonderful furnitures and make your home beautiful',
                    style: getBodyStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: appColors.graycolor)),
                Gap(160),
                Center(
                  child: SizedBox(
                    height: 50,
                    width: 200,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                            builder: (context) => new_login(),
                          ));
                        },
                        child: Text('Get Started',
                            style: getTitelStyle(
                                fontWeight: FontWeight.w600,
                                color: appColors.whitecolor))),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
