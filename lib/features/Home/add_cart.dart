import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/Model/Test_Style.dart';
import 'package:flutter_application_1/core/Model/appcolors.dart';
import 'package:gap/gap.dart';

class add_cart extends StatefulWidget {
  const add_cart({super.key});

  @override
  State<add_cart> createState() => _add_cartState();
}

class _add_cartState extends State<add_cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: appColors.appBarcolor),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(60)),
                  image: DecorationImage(
                      image: AssetImage("assets/addcart.png"),
                      fit: BoxFit.fill),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(color: appColors.whitecolor),
                  child: IconButton(
                      onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
                ),
              )
            ],
          ),
          Gap(5),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Minimal Stand',
                  style:
                      getBodyStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
                Gap(10),
                Row(
                  children: [
                    //Text('$ & 50'),
                    Text(
                      '50',
                      style: getBodyStyle(
                          fontSize: 30, fontWeight: FontWeight.w700),
                    ),
                    Gap(170),
                    CircleAvatar(
                      maxRadius: 20,
                      backgroundColor: appColors.graycolor,
                      child:
                          IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                    ),
                    Gap(10),
                    Text(
                      '01',
                      style: getTitelStyle(
                          fontWeight: FontWeight.w600, color: Colors.black),
                    ),
                    Gap(10),
                    CircleAvatar(
                      maxRadius: 20,
                      backgroundColor: appColors.whitecolor,
                      child: IconButton(
                          onPressed: () {}, icon: Icon(Icons.remove)),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Gap(5),
                    Text(
                      '4.5',
                      style: getSmalStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                    Gap(10),
                    Text(
                      '(50 reviews)',
                      style: getSmalStyle(),
                    )
                  ],
                ),
                Gap(5),
                Text(
                  'Minimal Stand is made of by natural wood. The design that is very simple and minimal. This is truly one of the best furnitures in any family for now. With 3 different colors, you can easily select the best match for your home. ',
                  style: getSmalStyle(),
                ),
                Gap(10),
                Row(
                  children: [
                    TextButton(
                        onPressed: () {}, child: Image.asset('assets/add.png')),
                    Gap(20),
                    SizedBox(
                      height: 60,
                      width: 220,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: appColors.balckcolor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          onPressed: () {},
                          child: Text(
                            'Add to Cart',
                            style: getBodyStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: appColors.whitecolor),
                          )),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
