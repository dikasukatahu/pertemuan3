import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          // Baris tombol menu
          Row(
            children: [
              // Profil
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Profil"),
                ),
              ),

              const SizedBox(width: 12),

              // Nilai
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Nilai"),
                ),
              ),

              const SizedBox(width: 12),

              // Jadwal
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Jadwal"),
                ),
              ),
            ],
          ),

          const SizedBox(height: 12),

          // Area pesan / catatan
          Expanded(
            child: TextField(
              expands: true,
              maxLines: null,
              textAlignVertical: TextAlignVertical.top,
              decoration: const InputDecoration(
                labelText: "Pesan / Catatan",
                hintText: "Tulis pesan atau catatan di sini...",
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}