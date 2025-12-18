import 'package:flutter/material.dart';

class ImplicitAnimationPage extends StatefulWidget {
  const ImplicitAnimationPage({super.key});

  @override
  State<ImplicitAnimationPage> createState() => _ImplicitAnimationPageState();
}

class _ImplicitAnimationPageState extends State<ImplicitAnimationPage> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Implicit Animations")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // AnimatedContainer
            GestureDetector(
              onTap: () {
                setState(() {
                  isActive = !isActive;
                });
              },
              child: AnimatedContainer(
                duration: const Duration(seconds: 1),
                curve: Curves.easeInOut,
                width: isActive ? 200 : 100,
                height: isActive ? 200 : 100,
                decoration: BoxDecoration(
                  color: isActive ? Colors.blue : Colors.red,
                  borderRadius:
                      BorderRadius.circular(isActive ? 50 : 10),
                ),
                child: const Center(
                  child: Text(
                    "Tap Me",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),

            // AnimatedOpacity
            AnimatedOpacity(
              opacity: isActive ? 1.0 : 0.3,
              duration: const Duration(milliseconds: 500),
              child: const Text(
                "Animated Opacity",
                style: TextStyle(fontSize: 20),
              ),
            ),

            const SizedBox(height: 20),

            // AnimatedScale
            AnimatedScale(
              scale: isActive ? 1.5 : 1.0,
              duration: const Duration(milliseconds: 400),
              child: const Icon(Icons.star, size: 50),
            ),

            const SizedBox(height: 20),

            // AnimatedRotation
            AnimatedRotation(
              turns: isActive ? 0.5 : 0.0,
              duration: const Duration(milliseconds: 600),
              child: const Icon(Icons.refresh, size: 50),
            ),
          ],
        ),
      ),
    );
  }
}
