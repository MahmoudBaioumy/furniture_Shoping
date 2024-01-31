import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/Model/Test_Style.dart';
import 'package:flutter_application_1/core/Model/appcolors.dart';
import 'package:flutter_application_1/core/Model/market.dart';
import 'package:gap/gap.dart';

class fav extends StatefulWidget {
  const fav({super.key});
  @override
  State<fav> createState() => _favState();
}

class _favState extends State<fav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.search_rounded)),
        title: Text(
          'favorites',
          style: getTitelStyle(
              fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart_outlined))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              //frist
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                        color: appColors.whitecolor,
                        borderRadius:
                            BorderRadiusDirectional.all(Radius.circular(50)),
                        image: DecorationImage(
                            image: AssetImage('assets/frist.png'))),
                  ),
                  Gap(4),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'coffee Table',
                          style: getSmalStyle(
                              fontWeight: FontWeight.w600,
                              color: appColors.grey2color),
                        ),
                        Text(
                          '50.00',
                          style: getBodyStyle(
                              fontWeight: FontWeight.w600,
                              color: appColors.balckcolor),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Column(
                    children: [
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.cancel_outlined)),
                      Gap(20),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.shopping_bag_outlined)),
                    ],
                  )
                ],
              ),
            ),
            Divider(),
            //secound
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      color: appColors.whitecolor,
                      borderRadius:
                          BorderRadiusDirectional.all(Radius.circular(50)),
                      image: DecorationImage(
                          image: AssetImage('assets/second.png'))),
                ),
                Gap(4),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'coffee Chair',
                        style: getSmalStyle(
                            fontWeight: FontWeight.w600,
                            color: appColors.grey2color),
                      ),
                      Text(
                        '20.00',
                        style: getBodyStyle(
                            fontWeight: FontWeight.w600,
                            color: appColors.balckcolor),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Column(
                  children: [
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.cancel_outlined)),
                    Gap(20),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.shopping_bag_outlined)),
                  ],
                )
              ],
            ),
            Divider(),
            //third
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      color: appColors.whitecolor,
                      borderRadius:
                          BorderRadiusDirectional.all(Radius.circular(50)),
                      image: DecorationImage(
                          image: AssetImage('assets/third.png'))),
                ),
                Gap(4),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Minimal Stand',
                        style: getSmalStyle(
                            fontWeight: FontWeight.w600,
                            color: appColors.grey2color),
                      ),
                      Text(
                        '25.00',
                        style: getBodyStyle(
                            fontWeight: FontWeight.w600,
                            color: appColors.balckcolor),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Column(
                  children: [
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.cancel_outlined)),
                    Gap(20),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.shopping_bag_outlined)),
                  ],
                )
              ],
            ),
            Divider(),
            //four
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      color: appColors.whitecolor,
                      borderRadius:
                          BorderRadiusDirectional.all(Radius.circular(50)),
                      image: DecorationImage(
                          image: AssetImage('assets/fourt.png'))),
                ),
                Gap(4),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Minimal Desk',
                        style: getSmalStyle(
                            fontWeight: FontWeight.w600,
                            color: appColors.grey2color),
                      ),
                      Text(
                        '50.00',
                        style: getBodyStyle(
                            fontWeight: FontWeight.w600,
                            color: appColors.balckcolor),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Column(
                  children: [
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.cancel_outlined)),
                    Gap(20),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.shopping_bag_outlined)),
                  ],
                )
              ],
            ),
            Divider(),
            //five
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      color: appColors.whitecolor,
                      borderRadius:
                          BorderRadiusDirectional.all(Radius.circular(50)),
                      image: DecorationImage(
                          image: AssetImage('assets/fifet.png'))),
                ),
                Gap(4),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Minimal Lamp',
                        style: getSmalStyle(
                            fontWeight: FontWeight.w600,
                            color: appColors.grey2color),
                      ),
                      Text(
                        '12.00',
                        style: getBodyStyle(
                            fontWeight: FontWeight.w600,
                            color: appColors.balckcolor),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Column(
                  children: [
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.cancel_outlined)),
                    Gap(20),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.shopping_bag_outlined)),
                  ],
                )
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      color: appColors.whitecolor,
                      borderRadius:
                          BorderRadiusDirectional.all(Radius.circular(50)),
                      image: DecorationImage(
                          image: AssetImage('assets/frist.png'))),
                ),
                Gap(4),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'coffee Table',
                        style: getSmalStyle(
                            fontWeight: FontWeight.w600,
                            color: appColors.grey2color),
                      ),
                      Text(
                        '50.00',
                        style: getBodyStyle(
                            fontWeight: FontWeight.w600,
                            color: appColors.balckcolor),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Column(
                  children: [
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.cancel_outlined)),
                    Gap(20),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.shopping_bag_outlined)),
                  ],
                )
              ],
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
