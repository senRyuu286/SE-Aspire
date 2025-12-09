import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../models/static/named_routes.dart';
import '../../widgets/bottom_nav_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends ConsumerStatefulWidget {
  const ProfileScreen({super.key});

  @override
  ConsumerState<ProfileScreen> createState() {
    return _ProfileScreenState();
  }
}

class _ProfileScreenState extends ConsumerState<ProfileScreen> {
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
              'Profile Screen',
              style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}