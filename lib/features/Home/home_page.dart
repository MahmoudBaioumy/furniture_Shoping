import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/Model/Test_Style.dart';
import 'package:flutter_application_1/core/Model/appcolors.dart';
import 'package:flutter_application_1/core/Model/list.dart';
import 'package:gap/gap.dart';

class Home_page extends StatefulWidget {
  const Home_page({super.key});

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  List<listmodel> Listmodel = [
    listmodel(
      image: 'assets/star 1.png',
    ),
    listmodel(
      image: 'assets/table 1 1.png',
    ),
    listmodel(
      image: 'assets/sofa 1.png',
    ),
    listmodel(
      image: 'assets/chair 4.png',
    ),
    listmodel(
      image: 'assets/bed 1.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.search_sharp)),
        title: Column(
          children: [
            Text(
              'Make home',
              style: getTitelStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: appColors.grey2color),
            ),
            Text(
              'BEAUTIFUL',
              style: getTitelStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: appColors.balckcolor),
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart_outlined))
        ],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(
                height: 120,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          SizedBox(
                              height: 60,
                              width: 60,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15))),
                                onPressed: () {},
                                child: Image.asset(Listmodel[index].image),
                              )),
                        ],
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 10,
                      );
                    },
                    itemCount: Listmodel.length),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.asset(
                                  'assets/lamba.png',
                                  height: 150,
                                  width: 150,
                                ),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.shopping_bag_rounded,
                                  ))
                            ],
                          ),
                          Gap(5),
                          Text(
                            'Black Simple Lamp',
                            style: getSmalStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: appColors.grey2color),
                          ),
                          Gap(5),
                          Text(
                            '12.00',
                            style: getSmalStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          )
                        ],
                      ),
                      Gap(40),
                      Column(
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.asset(
                                  'assets/table.png',
                                  height: 150,
                                  width: 150,
                                ),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.shopping_bag_rounded,
                                  ))
                            ],
                          ),
                          Gap(5),
                          Text(
                            'Minimal Stand',
                            style: getSmalStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: appColors.grey2color),
                          ),
                          Gap(5),
                          Text(
                            '25.00',
                            style: getSmalStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          )
                        ],
                      ),
                    ],
                  ),
                  Gap(10),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.asset(
                                  'assets/Coffee Chair.png',
                                  height: 150,
                                  width: 150,
                                ),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.shopping_bag_rounded,
                                  ))
                            ],
                          ),
                          Gap(5),
                          Text(
                            'Coffee Chair',
                            style: getSmalStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: appColors.grey2color),
                          ),
                          Gap(5),
                          Text(
                            ' 20.00',
                            style: getSmalStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          )
                        ],
                      ),
                      Gap(40),
                      Column(
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.asset(
                                  'assets/Simple Desk.png',
                                  height: 150,
                                  width: 150,
                                ),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.shopping_bag_rounded,
                                  ))
                            ],
                          ),
                          Gap(5),
                          Text(
                            'Simple Desk',
                            style: getSmalStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: appColors.grey2color),
                          ),
                          Gap(5),
                          Text(
                            '25.00',
                            style: getSmalStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          )
                        ],
                      ),
                    ],
                  ),
                  Gap(10),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.asset(
                                  'assets/lamba.png',
                                  height: 150,
                                  width: 150,
                                ),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.shopping_bag_rounded,
                                  ))
                            ],
                          ),
                          Gap(5),
                          Text(
                            'Black Simple Lamp',
                            style: getSmalStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: appColors.grey2color),
                          ),
                          Gap(5),
                          Text(
                            '12.00',
                            style: getSmalStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          )
                        ],
                      ),
                      Gap(40),
                      Column(
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.asset(
                                  'assets/table.png',
                                  height: 150,
                                  width: 150,
                                ),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.shopping_bag_rounded,
                                  ))
                            ],
                          ),
                          Gap(5),
                          Text(
                            'Minimal Stand',
                            style: getSmalStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: appColors.grey2color),
                          ),
                          Gap(5),
                          Text(
                            '25.00',
                            style: getSmalStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          )
                        ],
                      ),
                    ],
                  ),
                  Gap(10),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset(
                              'assets/lamba.png',
                              height: 150,
                              width: 150,
                            ),
                          ),
                          Gap(5),
                          Text(
                            'Black Simple Lamp',
                            style: getSmalStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: appColors.grey2color),
                          ),
                          Gap(5),
                          Text(
                            '12.00',
                            style: getSmalStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          )
                        ],
                      ),
                      Gap(40),
                      Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset(
                              'assets/table.png',
                              height: 150,
                              width: 150,
                            ),
                          ),
                          Gap(5),
                          Text(
                            'Minimal Stand',
                            style: getSmalStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: appColors.grey2color),
                          ),
                          Gap(5),
                          Text(
                            '25.00',
                            style: getSmalStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
    ;
  }
}
