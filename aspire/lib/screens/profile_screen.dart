import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../widgets/bottom_nav_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart' as fb_auth;
import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/user.dart' as app_model;
import '../utils/providers/user_provider.dart';

class ProfileScreen extends ConsumerStatefulWidget {
  const ProfileScreen({super.key});

  @override
  ConsumerState<ProfileScreen> createState() {
    return _ProfileScreenState();
  }
}

class _ProfileScreenState extends ConsumerState<ProfileScreen> {
  late final fb_auth.FirebaseAuth _auth;
  late final FirebaseFirestore _firestore;

  @override
  void initState() {
    super.initState();
    _auth = fb_auth.FirebaseAuth.instance;
    _firestore = FirebaseFirestore.instance;
  }

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
              // Prefer locally cached app user from provider
              Builder(
                builder: (context) {
                  final cached = ref.watch(userProvider);
                  if (cached != null) {
                    final fullName = '${cached.fName} ${cached.lName}';
                    return Row(
                      children: [
                        CircleAvatar(
                          radius: 36,
                          backgroundImage: const AssetImage(
                            'assets/Profile.png',
                          ),
                        ),
                        const SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              fullName,
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              cached.email,
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                color: Colors.grey[700],
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  }

                  // No cached user -> fetch from Firebase Auth + Firestore
                  return FutureBuilder<fb_auth.User?>(
                    future: Future.value(_auth.currentUser),
                    builder: (context, authSnap) {
                      if (authSnap.connectionState == ConnectionState.waiting) {
                        return const Center(child: CircularProgressIndicator());
                      }

                      final fbUser = authSnap.data;
                      if (fbUser == null) {
                        return Text(
                          'Not signed in',
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        );
                      }

                      return FutureBuilder<
                        DocumentSnapshot<Map<String, dynamic>>
                      >(
                        future: _firestore
                            .collection('users')
                            .doc(fbUser.uid)
                            .get(),
                        builder: (context, snap) {
                          if (snap.connectionState == ConnectionState.waiting) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          }

                          if (snap.hasError) {
                            return Text(
                              'Error loading profile',
                              style: GoogleFonts.poppins(),
                            );
                          }

                          final doc = snap.data;
                          final data = doc?.data() ?? <String, dynamic>{};

                          // Accept multiple common key variants to be robust to typos
                          final fName =
                              (data['fName'] ?? data['fname'] ?? data['FName'])
                                  as String? ??
                              '';
                          final lName =
                              (data['lName'] ?? data['lname'] ?? data['LName'])
                                  as String? ??
                              '';
                          final email =
                              data['email'] as String? ?? fbUser.email ?? '';
                          final photoUrl =
                              data['photoUrl'] as String? ?? fbUser.photoURL;

                          // Create app model User (provide sensible defaults for missing fields)
                          final appUser = app_model.User(
                            userID: (data['userID'] is int)
                                ? data['userID'] as int
                                : 0,
                            email: email,
                            fName: fName,
                            lName: lName,
                            password: data['password'] as String? ?? '',
                            age: (data['age'] is int) ? data['age'] as int : 0,
                            progress: (data['progress'] is num)
                                ? (data['progress'] as num).toDouble()
                                : 0.0,
                          );

                          // Cache to provider for later quick reads
                          ref.read(userProvider.notifier).setUser(appUser);

                          // Prefer combined fName + lName; gracefully handle missing parts
                          final fullName =
                              ((appUser.fName.isNotEmpty
                                          ? appUser.fName
                                          : fName)
                                      .isNotEmpty ||
                                  (appUser.lName.isNotEmpty
                                          ? appUser.lName
                                          : lName)
                                      .isNotEmpty)
                              ? '${(appUser.fName.isNotEmpty ? appUser.fName : fName).trim()} ${(appUser.lName.isNotEmpty ? appUser.lName : lName).trim()}'
                                    .trim()
                              : (fbUser.displayName ?? 'No name');

                          return Row(
                            children: [
                              CircleAvatar(
                                radius: 36,
                                backgroundImage: photoUrl != null
                                    ? NetworkImage(photoUrl)
                                    : const AssetImage('assets/Profile.png')
                                          as ImageProvider,
                              ),
                              const SizedBox(width: 12),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    fullName,
                                    style: GoogleFonts.poppins(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    email,
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          );
                        },
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
