import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: 24.0,
            vertical: 16.0
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 1. Icon dan Judul Leafboard.
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.eco,
                    color: Color(0xFF1E2432),
                    size: 28,
                  ),
                  SizedBox(width: 8,),
                  Text(
                    'Leafboard',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
              const SizedBox(height: 8,),

              // 2. Deskripsi Judul.
              const Center(
                child: Text(
                  'Work without limits',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(height: 32,),

              // 3. Email Address input.
              const Text(
                'Your email address',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 0,),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'name@example.com',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 14,
                  )
                ),
              ),
              const SizedBox(height: 20,),

              // 4. Password input.
              const Text(
                'Choose a password',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 8,),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'min. 8 characters',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 14
                  )
                ),
              ),
              const SizedBox(height: 28),

              // 5. Continue button.
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/menu');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFA3E635),
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  ),
                  child: const Text(
                    'Continue',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(height: 20,),

              // 6. Pembatas 'or'.
              const Row(
                children: [
                  Expanded(child: Divider()),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Text(
                      'or',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Expanded(child: Divider()),
                ],
              ),
              const SizedBox(height: 20,),
              
              // 7. Tombol login pakai akun Google.
              OutlinedButton.icon(
                onPressed: () {}, 
                icon: const Icon(
                  Icons.g_mobiledata,
                  size: 24,
                ),
                label: const Text('Sign up with Google'),
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                ),
              ),
              const SizedBox(height: 12,),

              // 8. Tombol login pakai akun Apple.
              OutlinedButton.icon(
                onPressed: () {}, 
                icon: const Icon(
                  Icons.apple,
                  size: 24,
                ),
                label: const Text('Sign up with Apple'),
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                ),
              )
            ],
          )
        )
      )
    );
  }
}