import 'package:flutter/material.dart';
import 'package:mi/pages/homepage.dart';

class Landing extends StatefulWidget {
  const Landing({super.key});

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 123.0),
              child: Column(
                children: [
                  Image.asset(
                    'assets/sundas.png',
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 100.0, right: 20),
                    child: Center(
                      child: Text(
                        'Order Your Fav Fruits',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const Text(
                    'Eat Fresh Fruits',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () =>
                        Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context) {
                        return const Homepage();
                      },
                    )),
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 4, 66, 6),
                          borderRadius: BorderRadius.circular(12)),
                      child: const Padding(
                        padding: EdgeInsets.all(24.0),
                        child: Text(
                          'Get Started',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
