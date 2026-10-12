import 'package:flutter/material.dart';

// ==========================================
// 1. TAB HOME 🏠
// ==========================================
class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header (Avatar & Icons) 👤🔔
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CircleAvatar(
                  radius: 18,
                  backgroundColor: Color(0xFFF3F4F6),
                  child: Text('FR', style: TextStyle(color: Colors.black, fontSize: 12)),
                ),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.notifications_none),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(Icons.more_horiz),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Greeting & Date ☀️
            const Center(
              child: Column(
                children: [
                  Text(
                    'Morning, Ralph',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'April 27, 2026',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Search Bar 🔍
            TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: const Icon(Icons.search, color: Colors.grey),
                filled: true,
                fillColor: const Color(0xFFF3F4F6),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 0),
              ),
            ),
            const SizedBox(height: 24),

            // Pengelompokan Tanggal & Kartu Tugas 📅
            const Text(
              'Today (3)',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
            ),
            const SizedBox(height: 12),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFFF9FAFB),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: const Color(0xFFF3F4F6)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.circle_outlined, size: 16, color: Colors.red[300]),
                      const SizedBox(width: 8),
                      const Text(
                        'Design Wireframe',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Row(
                    children: [
                      Icon(Icons.calendar_today, size: 12, color: Colors.grey),
                      SizedBox(width: 4),
                      Text(
                        'Friday 08:00 AM - 09:00 AM',
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // Tombol buat nambah list
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showAddTaskModal(context),
        backgroundColor: const Color(0xFFC4B5FD),
        shape: const CircleBorder(),
        child: const Icon(Icons.add, color: Colors.black),
      ),
    );
  }
}

// ==========================================
// 2. TAB TODAY 📅
// ==========================================
class TodayTab extends StatelessWidget {
  const TodayTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // bagian atas
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CircleAvatar(
                  radius: 18,
                  backgroundColor: Color(0xFFF3F4F6),
                  child: Text('FR', style: TextStyle(color: Colors.black, fontSize: 12)),
                ),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.refresh),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(Icons.more_horiz),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),

            TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: const Icon(Icons.search, color: Colors.grey),
                filled: true,
                fillColor: const Color(0xFFF3F4F6),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 0),
              ),
            ),
            const SizedBox(height: 20),

            _buildTaskCard(
              title: 'Design Wireframe',
              time: 'Friday 08:00 AM - 09:00 AM',
              iconColor: Colors.red[300]!,
            ),
            const SizedBox(height: 12),

            _buildTaskCard(
              title: 'Meet with client',
              time: 'Friday 10:00 AM - 11:00 AM',
              iconColor: Colors.blue[300]!,
            ),
            const SizedBox(height: 12),

            // Kartu Ungu
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFFECE6F0),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.crop_square, size: 16, color: Colors.purple[400]),
                      const SizedBox(width: 8),
                      const Text(
                        "April's content selection",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  const Padding(
                    padding: EdgeInsets.only(left: 24),
                    child: Text(
                      "In april's content selection...",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),

            _buildTaskCard(
              title: 'Brainstorming session - ideas',
              time: 'Saturday 08:00 AM - 17:00 PM',
              iconColor: Colors.green[300]!,
            ),
          ],
        ),
      ),

      // Tombol buat nambah list
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showAddTaskModal(context),
        backgroundColor: const Color(0xFFC4B5FD),
        shape: const CircleBorder(),
        child: const Icon(Icons.add, color: Colors.black),
      ),
    );
  }

  Widget _buildTaskCard({
    required String title,
    required String time,
    required Color iconColor,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFF9FAFB),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFFF3F4F6)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.circle_outlined, size: 16, color: iconColor),
              const SizedBox(width: 8),
              Text(
                title,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              const Icon(Icons.calendar_today, size: 12, color: Colors.grey),
              const SizedBox(width: 4),
              Text(
                time,
                style: const TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// ==========================================
// 3. TAB INBOX 📩
// ==========================================
class InboxTab extends StatelessWidget {
  const InboxTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 1. Header (Avatar FR & Tombol Notifikasi/More) 👤🔔
          // Header (Avatar & Icons) 👤🔔
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CircleAvatar(
                  radius: 18,
                  backgroundColor: Color(0xFFF3F4F6),
                  child: Text('FR', style: TextStyle(color: Colors.black, fontSize: 12)),
                ),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.notifications_none),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(Icons.more_horiz),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          const SizedBox(height: 24),

          // 2. Kartu Notifikasi Login Baru 🔔
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0xFFF3F4F6),
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.03),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Row(
              children: [
                // Ikon Lonceng dalam Lingkaran Cokelat
                const CircleAvatar(
                  radius: 20,
                  backgroundColor: Color(0xFF9E8B67),
                  child: Icon(
                    Icons.notifications,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
                const SizedBox(width: 12),

                // Teks Judul dan Deskripsi (Menggunakan Column)
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Aktifitas Login baru',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Color(0xFF1E2432),
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Lorem Ipsmu dolor is amet for a...',
                        style: TextStyle(
                          color: Color(0xFF9E8B67),
                          fontSize: 12,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ==========================================
// 4. TAB PROFIL 👤
// ==========================================
class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

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

// ================
// Widget Pop Up buat nambah kerjaan
// ================
void _showAddTaskModal(BuildContext context) {
  final TextEditingController taskController = TextEditingController();
  DateTime? selectedDate;

  showModalBottomSheet(
    context: context, 
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (BuildContext modalContext) {
      return StatefulBuilder(
        builder: (BuildContext context, StateSetter setModalState) {
          return Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom + 20,
              top: 20,
              left: 20,
              right: 20,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Add New Task',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16,),

                // 1. Form Input nama kerjaan
                TextField(
                  controller: taskController,
                  decoration: InputDecoration(
                    hintText: 'Task Name',
                    filled: true,
                    fillColor: const Color(0xFFF3F4F6),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 16,),

                 // 2. Form Input deskripsi
                TextField(
                  controller: taskController,
                  decoration: InputDecoration(
                    hintText: 'Task Description',
                    filled: true,
                    fillColor: const Color(0xFFF3F4F6),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 16,),

                // 3. Tombol milih tanggal
                OutlinedButton.icon(
                  onPressed: () async {
                    final DateTime? pickedDate = await showDatePicker(
                      context: context, 
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000), 
                      lastDate: DateTime(2030),
                    );

                    if (pickedDate != null) {
                      setModalState(() {
                        selectedDate = pickedDate;
                      });
                    }
                  }, 
                  icon: const Icon(
                    Icons.calendar_today,
                    size: 18,
                  ),
                  label: Text(
                    selectedDate == null
                      ? 'Chose Date'
                      : 'Date: ${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}',
                  ),
                ),
                const SizedBox(height: 20,),

                // 3. Tombol simpen
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // logic buat nyimpen data tugas
                      Navigator.pop(context);
                    }, 
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF1E2432),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      'Save',
                      style: TextStyle(color: Colors.white),
                    )
                  ),
                )
              ],
            ),
          );
        }
      );
    }
  );
}

// ==========================================
// 5. MENU SCREEN & NAVIGASI 🧭
// ==========================================
class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  int _selectedIndex = 0;

  // Tepat 4 halaman sesuai 4 tombol di navigasi bawah 🎯
  final List<Widget> _pages = [
    const HomeTab(),
    const TodayTab(),
    const InboxTab(),
    const ProfileTab(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: _pages[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF1E2432),
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_outlined),
            activeIcon: Icon(Icons.calendar_today),
            label: 'Today',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.inbox_outlined),
            activeIcon: Icon(Icons.inbox),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}