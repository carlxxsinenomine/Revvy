import 'package:flutter/material.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height:100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white
      ),
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                child: const Text("CS 109"),
              ),
              const Text("Parsed"),
              const Expanded(child: SizedBox()),
              const Text("3d ago")
            ],
          ),
          const Text("CS 189: Backpropagation & Matrix Calculus.pptx"),
          const Row(
            children: [
              Icon(Icons.slideshow),
              Text("48 slides"),
            ],
          ),
          Row(
            children: [
              InkWell(
                child: Ink(
                  child: const Row(
                    children: [
                      Icon(Icons.notes),
                      Text("...")
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
