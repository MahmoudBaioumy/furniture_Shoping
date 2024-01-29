import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/Model/appcolors.dart';
import 'package:flutter_application_1/features/profile/new_login.dart';

class crate_view extends StatefulWidget {
  const crate_view({super.key});

  @override
  State<crate_view> createState() => _crate_viewState();
}

bool isNotVisible = true;

class _crate_viewState extends State<crate_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'WELCOME',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                label: Text('Name'),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                label: Text('Email'),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              keyboardType: TextInputType.visiblePassword,
              obscureText: isNotVisible,
              decoration: InputDecoration(
                label: Text('Password'),
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
                label: Text('Confirm Password'),
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
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 60,
              width: 350,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      backgroundColor: Colors.black),
                  child: Text(
                    'SIGN UP',
                    style: TextStyle(fontSize: 20, color: appColors.whitecolor),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 50,
                ),
                Text('Already have acount?'),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => new_login(),
                    ));
                  },
                  child: Text(
                    'SIGN UP',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
