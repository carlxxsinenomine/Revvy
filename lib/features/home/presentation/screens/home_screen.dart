import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:revvy/core/theme/theme.dart';
import 'package:revvy/shared/bottom_nav.dart';

class HomeScreen extends ConsumerStatefulWidget {
  static const String path = '/home';

  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      bottomNavigationBar: BottomNav(),
      body: SafeArea(
        child: Column(
          children: [
            // Header
            Row(
              children: [
                // Profile
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.greenAccent,
                  ),
                ),
                SizedBox(width: 14),
                // Welcome header text
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text("Hello, Carl"), Text("Review your notes")],
                ),
                Expanded(child: SizedBox()),
                // Dashboard
                InkWell(onTap: () {}, child: Icon(Icons.dashboard)),
              ],
            ),

            // Search bar
            TextField(
              decoration: InputDecoration(
                hintText: "Search slides, concepts, notes...",
                hintStyle: TextStyle(color: Colors.black54),
                prefixIcon: const Icon(
                  Icons.search_rounded,
                  color: Colors.black54,
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Image.asset(
                    'assets/images/voice-icon.png',
                    height: 40,
                    width: 40,
                  ),
                ),
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide(color: Color(0xFFE8E2D8)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide(color: Color(0xFFE8E2D8)),
                ),
              ),
            ),

            // File input container
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                child: Column(
                  children: [
                    // Upload logo
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFFFF1BB),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Icon(Icons.cloud_upload_outlined),
                      ),
                    ),
                    // Text
                    Text("Drop Lecture Slides or Notes"),
                    Text(
                      "Accepts PDF, PPTX, Keynote, Audio Transcripts up to 150MB",
                    ),
                    // Two buttons
                    InkWell(
                      child: Ink(
                        child: Row(
                          children: [
                            Icon(Icons.add_circle_outline_outlined),
                            Text("SELECT FILE FROM DEVICE"),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      child: Ink(
                        child: Row(
                          children: [
                            Icon(Icons.cloud),
                            Text("IMPORT CANV/DRIVE"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
