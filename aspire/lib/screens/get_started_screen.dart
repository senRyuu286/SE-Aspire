import 'package:flutter/material.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset('assets/get_started_bg.png'),

              Padding(
                padding: EdgeInsets.fromLTRB(20, 100, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('ASPIRE', style: TextStyle(
                        color: Color(0XFF4365DE),
                        fontWeight: FontWeight.w800,
                        fontSize: 40,
                      ),
                    ),

                    SizedBox(height: 24,),

                    Text('Elevate your\ncareer\njourney', style: TextStyle(
                        color: Color(0XFFFFFFFF),
                        fontWeight: FontWeight.w800,
                        fontSize: 40,
                      ),
                    ),

                    SizedBox(height: 16,),

                    Text('Powered to help you grow, learn, and \nsucceed in your careed', style: TextStyle(
                        color: Color(0XFFACB5BB),
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ]
          ),

          Padding(
            padding: EdgeInsets.fromLTRB(25, 100, 25, 0),
            child: Column(
              children: [
                TextButton( 
                  style: TextButton.styleFrom(
                    fixedSize: Size(double.infinity, 60),
                    backgroundColor: Color(0XFF4365DE),
                    foregroundColor: Color(0XFFFFFFFF),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/registerScreen');
                  }, 
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Icon(Icons.flag_outlined, size: 30,),
                      ),
                      Text('Find Career', style: TextStyle(fontSize: 16),),
                    ],
                  )
                ),

                SizedBox(height: 20,),

                TextButton(
                  style: TextButton.styleFrom(
                    fixedSize: Size(double.infinity, 60),
                    backgroundColor: Color(0XFFF3F6FC),
                    foregroundColor: Color(0XFF1A1C1E),
                  ),
                  onPressed: () {

                  }, 
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Icon(Icons.edit, size: 30,),
                      ),
                      Text('Become seller', style: TextStyle(fontSize: 16),),
                    ],
                  )
                ),

                SizedBox(height: 160,),

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
          )
        ],
      ),
    );
  }
}