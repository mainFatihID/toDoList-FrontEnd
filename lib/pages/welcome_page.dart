import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 1. Bikin Body
      body: Column(
        children: [
          SizedBox(
            height: 320,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: 280,
                  decoration: const BoxDecoration(
                    color: Color(0xFF1E2432),
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(40),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.eco,
                      size: 40,
                      color: Color(0xFF1E2432),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 40,),

          const Text(
            'Leafboard',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 12,),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              'A platform built for a new way of working',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ),

          const Spacer(),

          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: ElevatedButton(
              // mengarah ke register dulu
              onPressed: () {
                Navigator.pushNamed(context, '/register');
              }, 
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFA3E635),
                foregroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Get Started for Free',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  SizedBox(width: 8,),
                  Icon(
                    Icons.chevron_right,
                    size: 20,
                  ),
                ],
              )
            ),
          )
        ],
      ),
    );
  }
}