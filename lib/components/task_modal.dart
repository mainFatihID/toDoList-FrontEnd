import 'package:flutter/material.dart';

// Fungsi Pop Up untuk menambah tugas baru
void showAddTaskModal(BuildContext context) {
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

                // 2. Form Input deskripsi kerjaan
                TextField(
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
                      ? 'Choose Date'
                      : 'Date: ${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}',
                  ),
                ),
                const SizedBox(height: 20,),

                // 4. Tombol simpan
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // Logic buat nyimpen data tugas
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
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      );
    },
  );
}