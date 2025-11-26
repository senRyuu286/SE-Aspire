import 'package:aspire/widgets/quiz_app_bar.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget{
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _registerFormKey = GlobalKey<FormState>();
  final _emailCont = TextEditingController();
  final _fNameCont = TextEditingController();
  final _lNameCont = TextEditingController();
  final _passCont = TextEditingController();
  final _confirmPassCont = TextEditingController();
  bool _obscuretext = true;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: QuizAppBar(),
      
      // AppBar(
      //   toolbarHeight: 100,
      //   title: Align(
      //     alignment: Alignment.centerRight, 
      //     child: Text('ASPIRE', style: TextStyle(color: Color(0XFFFFFFFF), fontWeight: FontWeight.w800),)
      //   ), backgroundColor: Color(0XFF172635),
      //   leading: BackButton(
      //     color: Color(0XFFFFFFFf),
      //   ),
      // ),

      body: Column(
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
            child: Form(
              key: _registerFormKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: _emailCont,
                    decoration: InputDecoration(
                      label: Text('Email/Phone Number'),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)
                      ),
                    ),
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
                  ),

                  SizedBox(height: 40,),

                  SizedBox(
                    width: double.infinity,
                    height: 52,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0XFF4365DE),
                        foregroundColor: Color(0XFFFFFFFF),
                      ),
                      onPressed: () {
                    
                      },
                      child: Text('Sign up', style: TextStyle(fontSize: 16),),
                    ),
                  ),

                  SizedBox(height: 80,),

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
              )

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}