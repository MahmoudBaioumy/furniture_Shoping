import 'package:flutter/material.dart';
import 'package:flutter_application_1/appcolors.dart';
import 'package:flutter_application_1/new_create.dart';

class new_login extends StatefulWidget {
  const new_login({super.key});

  @override
  State<new_login> createState() => _new_lodinState();
}

bool isNotVisible = true;

class _new_lodinState extends State<new_login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello !',
                      style: TextStyle(
                        fontSize: 35,
                        color: appColors.greycolor,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'WELCOME BACK',
                      style: TextStyle(
                          fontSize: 35,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  label: Text(
                    'Email',
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: isNotVisible,
                decoration: InputDecoration(
                    label: Text(
                      'password',
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isNotVisible = !isNotVisible;
                        });
                      },
                      icon: Icon(
                        (isNotVisible)
                            ? Icons.visibility_off
                            : Icons.remove_red_eye,
                      ),
                    )),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'Forget Password?',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                  height: 55,
                  width: 300,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      child: Text(
                        'Log in',
                        style: TextStyle(
                            color: appColors.whitecolor, fontSize: 20),
                      ))),
              SizedBox(
                height: 25,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => crate_view(),
                    ));
                  },
                  child: Text(
                    'SIGN UP',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
