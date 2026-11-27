import 'package:flutter/material.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          // Judul
          const Text(
            "Form Pendaftaran Akun",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 12),

          // Username
          const TextField(
            decoration: InputDecoration(
              labelText: "Username",
              border: OutlineInputBorder(),
            ),
          ),

          const SizedBox(height: 12),

          // Email
          const TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: "Email",
              border: OutlineInputBorder(),
            ),
          ),

          const SizedBox(height: 12),

          // Password + Tombol Bantuan
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: TextField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),

              const SizedBox(width: 12),

              SizedBox(
                width: 56,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text("Bantuan"),
                          content: const Text(
                            "Masukkan password untuk akun mahasiswa.",
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("OK"),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: const Text("?"),
                ),
              ),
            ],
          ),

          // Mengisi ruang kosong sampai bagian bawah
          const Spacer(),

          // Register
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Registrasi berhasil"),
                  ),
                );
              },
              child: const Text("Register"),
            ),
          ),
        ],
      ),
    );
  }
}