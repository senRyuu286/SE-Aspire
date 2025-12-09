import 'package:aspire/widgets/quiz_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../utils/firebase_ai_generate_career_recommendation_service.dart';
import '../utils/firebase_quiz_service.dart';
import '../utils/firebase_quiz_summary_service.dart';
import '../utils/providers/login_service_provider.dart';
import '../utils/providers/user_provider.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final _loginFormKey = GlobalKey<FormState>();
  final _emailPhoneNumberCont = TextEditingController();
  final _passwordCont = TextEditingController();
  bool _isLoading = false;

  @override
  void dispose() {
    _emailPhoneNumberCont.dispose();
    _passwordCont.dispose();
    super.dispose();
  }

  /// Handle login with Firebase
  void _handleLogin() async {
    if (!_loginFormKey.currentState!.validate()) {
      return;
    }

    setState(() {
      _isLoading = true;
    });

    try {
      final loginService = ref.read(loginServiceProvider);
      final quizService = FirebaseQuizService();
      final quizSummaryService = FirebaseQuizSummaryService();
      final generateCareerRecommendationService =
          FirebaseAiGenerateCareerRecommendationsService();

      // Login user and fetch from Firebase
      final user = await loginService.loginUser(
        _emailPhoneNumberCont.text,
        _passwordCont.text,
      );

      // Cache user in provider
      ref.read(userProvider.notifier).setUser(user);

      // Show success message
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Login successful! Welcome ${user.fName}')),
        );
      }

      if (mounted) {
        quizService.initializeAndGetQuizProgress(ref);
        quizSummaryService.initializeAndGetQuizSummary(ref);
        generateCareerRecommendationService.initializeAndGeneratedCareer(ref);
      }

      // g usab nko ug Navigate dung sa HomeScreen
      if (mounted) {
        Navigator.pushNamedAndRemoveUntil(
          context,
          '/HomeScreen',
          (route) => false,
        );
      }
    } catch (e) {
      // Show error message
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Login failed: ${e.toString()}'),
            backgroundColor: Colors.red,
          ),
        );
      }
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: QuizAppBar(),
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset('assets/login_background.png'),

              Padding(
                padding: EdgeInsets.fromLTRB(26, 10, 26, 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 120),
                    Text(
                      'Sign in to your Account',
                      style: TextStyle(
                        fontSize: 39,
                        fontWeight: FontWeight.w800,
                        color: Color(0XFFFFFFFF),
                      ),
                    ),

                    Text(
                      "Let's sign you in to your account",
                      style: TextStyle(fontSize: 14, color: Color(0XFFFFFFFF)),
                    ),
                  ],
                ),
              ),
            ],
          ),

          Padding(
            padding: EdgeInsets.fromLTRB(26, 10, 26, 10),
            child: Column(
              children: [
                Form(
                  key: _loginFormKey,
                  child: Column(
                    children: [
                      SizedBox(height: 31),

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
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Email is required';
                          }
                          final emailRegex = RegExp(
                            r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$',
                          );
                          if (!emailRegex.hasMatch(value)) {
                            return 'Enter a valid email';
                          }
                          return null;
                        },
                      ),

                      SizedBox(height: 16),

                      TextFormField(
                        controller: _passwordCont,
                        obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: EdgeInsets.all(0),
                            child: Icon(
                              Icons.lock_outlined,
                              color: const Color.fromARGB(151, 158, 158, 158),
                            ),
                          ),
                          label: Text('Password'),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Password is required';
                          }
                          return null;
                        },
                      ),

                      SizedBox(height: 16),

                      GestureDetector(
                        onTap: () {
                          //Place Forgot Password here
                        },
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'Forgot password?',
                            style: TextStyle(
                              color: const Color(0xFF4365DE),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 40),

                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0XFF4365DE),
                          ),
                          onPressed: _isLoading ? null : () => _handleLogin(),
                          child: _isLoading
                              ? SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2,
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      Colors.white,
                                    ),
                                  ),
                                )
                              : Text(
                                  'Sign in',
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

                SizedBox(height: 26),

                Row(
                  children: [
                    Expanded(child: Divider(color: Colors.grey, thickness: 1)),

                    Padding(
                      padding: EdgeInsets.all(25),
                      child: Text(
                        'Or login with',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),

                    Expanded(child: Divider(color: Colors.grey, thickness: 1)),
                  ],
                ),

                SizedBox(height: 26),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 154,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          side: BorderSide(width: 1, color: Colors.grey),
                          elevation: 0,
                          backgroundColor: Colors.white10,
                          foregroundColor: Color(0XFF1A1C1E),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 5),
                              child: Icon(Icons.facebook),
                            ),
                            Text('Facebook'),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(width: 17),

                    SizedBox(
                      width: 154,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          side: BorderSide(width: 1, color: Colors.grey),
                          elevation: 0,
                          backgroundColor: Colors.white10,
                          foregroundColor: Color(0XFF1A1C1E),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 5),
                              child: Icon(Icons.phone_android),
                            ),
                            Text('Phone No.'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 90),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account? "),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/registerScreen');
                      },
                      child: Text(
                        'Register',
                        style: TextStyle(
                          color: Color(0XFF4365DE),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
