import 'dart:ui';

import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _loginFormKey = GlobalKey<FormState>();
  final _emailPhoneNumberCont = TextEditingController();
  final _passwordCont = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ASPIRE'),),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Sign in to your Account', 
              style: TextStyle(
              fontSize: 39,
              fontWeight: FontWeight.w800,
              ),
            ),

            Text("Let's sign you in to your account",
              style: TextStyle(
                fontSize: 14
              ),
            ),

            Form(
              key: _loginFormKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: _emailPhoneNumberCont,
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(0),
                        child: Icon(
                          Icons.person_outlined,
                          color: const Color.fromARGB(151, 158, 158, 158),
                        ),
                      ),
                      label: Text('Email/Phone Number'),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)
                      ),
                    ),
                  ),

                  TextFormField(
                    controller: _passwordCont,
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(0),
                        child: Icon(
                          Icons.lock_outlined,
                          color: const Color.fromARGB(151, 158, 158, 158),
                        ),
                      ),
                      label: Text('Email/Phone Number'),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)
                      ),
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      //Place Forgot Password here
                    },
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text('Forgot password?', 
                        style: TextStyle(
                          color: const Color(0xFF4365DE),
                          fontWeight: FontWeight.w700
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0XFF4365DE),
                      ),
                      onPressed: () {

                      },
                      child: Text('Sign in',
                        style: TextStyle(
                          color: const Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Row(
              children: [
                Expanded(
                  child:  Divider(
                    color: Colors.grey, // Customize the line color
                    thickness: 1,
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(25),
                  child: Text('Or login with',
                    style: TextStyle(color: Colors.grey,),
                  ),
                ),

                Expanded(
                  child:  Divider(
                    color: Colors.grey, // Customize the line color
                    thickness: 1,
                  ),
                ),
              ]
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width:  154,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      side: BorderSide(width: 1, color: Colors.grey),
                      elevation: 0,
                      backgroundColor: Colors.white10,
                    ),
                    onPressed: () {

                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.facebook),
                        Text('Facebook'),
                      ],
                    )
                  ),
                ),

                SizedBox(width: 17),

                SizedBox(
                  width: 154,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      side: BorderSide(width: 1, color: Colors.grey),
                      elevation: 0,
                      backgroundColor: Colors.white10
                    ),
                    onPressed: () {

                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.phone_android),
                        Text('Phone No.'),
                      ],
                    )
                  ),
                )
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account? "),
                GestureDetector(
                  onTap: () {

                  },
                  child: Text('Register', style: TextStyle(color: Color(0XFF4365DE), fontWeight: FontWeight.w700, )),
                )
              ],
            )

          ],
        ),
      ),
    );
  }
}