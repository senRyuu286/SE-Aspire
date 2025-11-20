import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage("assets/Profile.png"),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Justin Ramas",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold)),
                      Text(
                        "UI/UX Designer",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.normal,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                  Spacer(),
                  Stack(
                    children: [
                      Icon(Icons.notifications_none, size: 30),
                      Positioned(
                        right: 0,
                        child: Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Good performance !",
                      style: GoogleFonts.poppins(
                          fontSize: 24, fontWeight: FontWeight.w400),
                    ),
                  ),
                  Text(
                    "31 Aug 2023",
                    style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    width: 180,
                    height: 180,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.blue[800]!, Colors.blue[500]!],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Modules",
                            style: GoogleFonts.poppins(
                                fontSize: 24,
                                fontWeight: FontWeight.w400,
                                color: Colors.white)),
                        SizedBox(height: 10),
                        Text("Details",
                            style: GoogleFonts.poppins(
                                fontSize: 24,
                                fontWeight: FontWeight.w400,
                                color: Colors.white)),
                        SizedBox(height: 50),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 20,
                              height: 8,
                              decoration: BoxDecoration(
                                color:
                                    const Color.fromARGB(255, 198, 209, 255),
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            Stack(
                              children: [
                                Container(
                                  width: 50,
                                  height: 8,
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 198, 209, 255),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                                Container(
                                  width: 30,
                                  height: 8,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: 30,
                              height: 8,
                              decoration: BoxDecoration(
                                color:
                                    const Color.fromARGB(255, 198, 209, 255),
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            Container(
                              width: 30,
                              height: 8,
                              decoration: BoxDecoration(
                                color:
                                    const Color.fromARGB(255, 198, 209, 255),
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 16),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 120,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade300, blurRadius: 6)
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("80%",
                                style: GoogleFonts.poppins(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.green)),
                            Text(
                              "Response\nOn-time rate",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 16),
                      Container(
                        width: 120,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade300, blurRadius: 6)
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                              Icon(Icons.star,
                              color: Colors.orange, size: 18),
                              Text("4.9/5.0",
                              style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16)),
                              ],
                            ),
                            Text("Positive\nRating",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Mentors",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  Text("See more", style: TextStyle(color: Colors.blue)),
                ],
              ),
              SizedBox(height: 12),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                child: ListTile(
                  leading: FlutterLogo(size: 40),
                  title: Text("Basic Flutter 101..."),
                  subtitle: Text("Introduction to flutter"),
                  trailing: Icon(Icons.more_vert),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(radius: 6, backgroundColor: const Color.fromARGB(255, 0, 0, 0)),
                  SizedBox(width: 6),
                  CircleAvatar(radius: 6, backgroundColor: const Color.fromARGB(179, 255, 255, 255)),
                  SizedBox(width: 6),
                  CircleAvatar(radius: 6, backgroundColor: Colors.white70),
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Find interesting careers easily",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 6),
                  Text(
                    "We’ll help you to find work and collaborate with professionals easily",
                    style: TextStyle(color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.grey[300],
                          minimumSize: Size(120, 48),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24)),
                          elevation: 0,
                        ),
                        child: Text("Skip"),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Color(0xFF4365DE),
                          minimumSize: Size(120, 48),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24)),
                        ),
                        child: Text("Next"),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
