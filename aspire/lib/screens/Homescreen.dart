import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../models/static/named_routes.dart';
import '../../widgets/bottom_nav_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class Homescreen extends ConsumerStatefulWidget {
  const Homescreen({super.key});

  @override
  ConsumerState<Homescreen> createState() {
    return _HomescreenState();
  }
}

class _HomescreenState extends ConsumerState<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(ref: ref),
      appBar: AppBar(
        elevation: 0,
        title: Image.asset('assets/Appbar.png', fit: BoxFit.cover),
        automaticallyImplyLeading: false,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
            ),
            child: IconButton(
              icon: const Icon(
                Icons.notifications_none_outlined,
                color: Colors.black,
                size: 39,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            const SizedBox(height: 20),
            Text(
              'Discover your best-fit career path',
              style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                blurRadius: 6,
                color: Colors.black.withOpacity(0.1),
                offset: const Offset(0, 3),
                ),
              ],
              ),
              child: SizedBox(
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Search careers...",
                icon: Icon(Icons.search),
                ),
              ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                'Popular Careers',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                'View All',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF7459E4),
                ),
                ),
              ),
              ],
            ),
            SizedBox(
              height: 220,
              child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                GestureDetector(
                onTap: () {},
                child: Image.asset('assets/Card.png'),
                ),
                const SizedBox(width: 12),
                GestureDetector(
                onTap: () {},
                child: Image.asset('assets/Card2.png'),
                ),
              ],
              ),
            ),
            Row(
              children: [
                Container(
                  width: 60,
                  height: 40,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(vertical: 40),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(45),
                    color: const Color.fromARGB(255, 255, 254, 254),
                    border: Border.all(
                      color: const Color.fromARGB(255, 170, 170, 170),
                    )
                  ),
                  child: Text(
                    'All',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Container(
                  width: 90,
                  height: 40,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(vertical: 40),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(45),
                    color: const Color.fromARGB(255, 255, 254, 254),
                    border: Border.all(
                      color: const Color.fromARGB(255, 170, 170, 170),
                    )
                  ),
                  child: Text(
                    'Newest',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Container(
                  width: 90,
                  height: 40,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(vertical: 40),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(45),
                    color: const Color.fromARGB(255, 255, 254, 254),
                    border: Border.all(
                      color: const Color.fromARGB(255, 170, 170, 170),
                    )
                  ),
                  child: Text(
                    'Oldest',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Container(
                  width: 90,
                  height: 40,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(vertical: 40),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(45),
                    color: const Color.fromARGB(255, 255, 254, 254),
                    border: Border.all(
                      color: const Color.fromARGB(255, 170, 170, 170),
                    )
                  ),
                  child: Text(
                    'Nearest',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Available Jobs',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                  },
                  child: Image.asset('assets/Job Card.png'),
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
