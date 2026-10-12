import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
      child: Column(
        children: [
          // 1. Foto Profil dengan Tombol Edit (Menggunakan Stack) 📸
          Stack(
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage('https://i.pravatar.cc/300'),
                backgroundColor: Color(0xFFF3F4F6),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.all(6),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.edit,
                    size: 14,
                    color: Colors.black54,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),

          // 2. Nama Pengguna 📛
          const Text(
            'Alex Gilles',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1E2432),
            ),
          ),
          const SizedBox(height: 32),

          // 3. Kartu Detail Informasi Kontak 📇
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            decoration: BoxDecoration(
              color: const Color(0xFFF3F4F6),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                _buildInfoRow(
                  icon: Icons.phone_outlined,
                  label: 'PHONE',
                  value: '+ 7 904 599 XXX 11',
                ),
                const Divider(height: 24, color: Colors.transparent),
                _buildInfoRow(
                  icon: Icons.email_outlined,
                  label: 'EMAIL',
                  value: 'alexg@gmail.com',
                ),
                const Divider(height: 24, color: Colors.transparent),
                _buildInfoRow(
                  icon: Icons.location_on_outlined,
                  label: 'ADDRESS',
                  value: 'St. Petersburg, Vos...',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Helper Widget untuk membuat baris informasi kontak secara berulang
  Widget _buildInfoRow({
    required IconData icon,
    required String label,
    required String value,
  }) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(icon, size: 20, color: Colors.black54),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                  letterSpacing: 0.5,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF1E2432),
                ),
              ),
            ],
          ),
        ),
        const Icon(Icons.chevron_right, color: Colors.grey, size: 18),
      ],
    );
  }
}