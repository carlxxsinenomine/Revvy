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
                padding: EdgeInsets.symmetric(vertical: 32, horizontal: 34),
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
                    SizedBox(height: 14),
                    // Text
                    Text("Drop Lecture Slides or Notes"),
                    Text(
                      "Accepts PDF, PPTX, Keynote, Audio Transcripts up to 150MB",
                    ),
                    SizedBox(height: 14),
                    // Two buttons
                    InkWell(
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.add_circle_outline_outlined,
                              color: Colors.white,
                            ),
                            Text(
                              "SELECT FILE FROM DEVICE",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 14),
                    InkWell(
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xFFFFF1BB),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("Modules & Archive"), Text("Clear all")],
            ),
            SizedBox(
              height: 28,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                    child: Container(
                      height: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.black,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Center(
                          child: Text(
                            "All Modules",
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Cards
            GestureDetector(
              child: Container(
                height: 130,
                width: 190,
                decoration: BoxDecoration(
                  color: Color(0xFFFBE68A),
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 18),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            child: Icon(Icons.mic_outlined),
                          ),
                          Text("Voice Note")
                        ],
                      ),
                      SizedBox(height: 30,),
                      Row(
                        children: [
                          Expanded(child: Text("Record live lecture")),
                          SizedBox(width: 20,),
                          Container(child: Icon(Icons.arrow_forward))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
