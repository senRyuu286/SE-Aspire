import 'package:aspire/widgets/quiz_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../models/register.dart';
import '../utils/providers/register_provider.dart';

class RegisterScreen extends ConsumerStatefulWidget{
  const RegisterScreen({super.key});

  @override
  ConsumerState<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends ConsumerState<RegisterScreen> {
  final _registerFormKey = GlobalKey<FormState>();
  final _emailCont = TextEditingController();
  final _fNameCont = TextEditingController();
  final _lNameCont = TextEditingController();
  final _passCont = TextEditingController();
  final _confirmPassCont = TextEditingController();
  bool _obscuretext = true;

  @override
  void dispose(){
    _emailCont.dispose();
    _fNameCont.dispose();
    _lNameCont.dispose();
    _passCont.dispose();
    _confirmPassCont.dispose();
    super.dispose();
  }

  void _submitForm() {
    if(_registerFormKey.currentState!.validate()) {
      ref.read(registerNotifierProvider.notifier).setRegisterInfo(
        Register(
          email: _emailCont.text,
          fName: _fNameCont.text,
          lName: _lNameCont.text,
          password: _passCont.text,
        )
      );
      Navigator.pushNamed(context, '/loginScreen');
    }
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: QuizAppBar(),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset('assets/login_background.png'),

                Padding(
                  padding: const EdgeInsets.fromLTRB(26, 17, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 130,),
                      Text('Register', style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w800,
                        color: Color(0XFFEDF1F3),
                      ),),

                      SizedBox(height: 16,),

                      Text("Let's create your account", style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0XFFEDF1F3),
                      ),),
                    ],
                  ),
                )
              ]
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(26, 28, 26, 0),
              child: Column(
                children: [
                  Form(
                    key: _registerFormKey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _emailCont,
                          decoration: InputDecoration(
                            label: Text('Email Address'),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50)
                            ),
                          ),
                          validator: (value) {
                            if(value == null || value.isEmpty){
                              return 'Required';
                            }
                            final emailRegex = RegExp(r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$');
                            if (!emailRegex.hasMatch(value)) {
                              return 'Enter a valid email';
                            }
                            return null;
                          },
                        ),

                        SizedBox(height: 28,),

                        TextFormField(
                          controller: _fNameCont,
                          decoration: InputDecoration(
                            label: Text('First Name'),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50)
                            ),
                          ),
                          validator: (value) => value == null || value.isEmpty ? 'Required' : null,
                        ),

                        SizedBox(height: 28,),

                        TextFormField(
                          controller: _lNameCont,
                          decoration: InputDecoration(
                            label: Text('Last Name'),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50)
                            ),
                          ),
                          validator: (value) => value == null || value.isEmpty ? 'Required' : null,
                        ),

                        SizedBox(height: 28,),

                        TextFormField(
                          controller: _passCont,
                          obscureText: _obscuretext,
                          decoration: InputDecoration(
                            label: Text('Password'),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50)
                            ),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _obscuretext = !_obscuretext;
                                });
                              }, 
                              icon: Icon(_obscuretext ? Icons.visibility_off_outlined : Icons.visibility_outlined)
                            ),
                          ),
                          validator:(value) => value == null || value.isEmpty ? 'Required' : null,
                        ),

                        SizedBox(height: 28,),

                        TextFormField(
                          controller: _confirmPassCont,
                          obscureText: _obscuretext,
                          decoration: InputDecoration(
                            label: Text('Confirm Password'),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50)
                            ),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _obscuretext = !_obscuretext;
                                });
                              }, 
                              icon: Icon(_obscuretext ? Icons.visibility_off_outlined : Icons.visibility_outlined)
                            ),
                          ),
                          validator: (value) {
                            if(value == null || value.isEmpty){
                              return 'Required';
                            }
                            if(value != _passCont.text){
                              return 'Passwords do not match';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(26, 17, 26, 0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: double.infinity,
              height: 52,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Color(0XFF4365DE),
                  foregroundColor: Color(0XFFFFFFFF),
                ),
                onPressed: () {
                  _submitForm();
                },
                child: Text('Sign up', style: TextStyle(fontSize: 16),),
              ),
            ),

            SizedBox(height: 50,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account? "),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/loginScreen');
                  },
                  child: Text('Login', style: TextStyle(color: Color(0XFF4365DE), fontWeight: FontWeight.w700, )),
                )
              ],
            ),

            SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }
}