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
  List<usersmodel> users = [
    usersmodel(
      type: 'Coffe Table',
      image: 'assets/frist.png',
      salary: '50.00',
    ),
    usersmodel(
      type: 'Coffe Chair',
      image: 'assets/second.png',
      salary: '50.00',
    ),
    usersmodel(
      type: 'Minimal Stand',
      image: 'assets/third.png',
      salary: '50.00',
    ),
    usersmodel(
      type: 'Minimal Desk',
      image: 'assets/fourt.png',
      salary: '50.00',
    ),
    usersmodel(
      type: 'Minimal lamp',
      image: 'assets/fifet.png',
      salary: '50.00',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading:
              IconButton(onPressed: () {}, icon: Icon(Icons.search_rounded)),
          title: Text(
            'favorites',
            style: getTitelStyle(
                fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black),
          ),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {}, icon: Icon(Icons.shopping_cart_outlined))
          ],
        ),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                leading: SizedBox(
                  height: 150,
                  width: 100,
                  child: ClipRRect(
                    child: Image.asset(
                      users[index].image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                title: Text(
                  users[index].type,
                  style: getTitelStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w600,
                      color: appColors.graycolor),
                ),
                subtitle: Text(
                  users[index].salary,
                  style: getSmalStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: appColors.balckcolor),
                ),
                trailing: Column(
                  children: [
                    // IconButton(
                    //      onPressed: () {}, icon: Icon(Icons.cancel_outlined)),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.shopping_bag_outlined)),
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) {
              return Divider();
            },
            itemCount: users.length));
  }
}
