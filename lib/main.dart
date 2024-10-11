import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MemberListScreen(),
    );
  }
}

class MemberListScreen extends StatelessWidget {
  final List<Map<String, String>> members = [
    {'nama': 'Muhib', 'lokasi': 'Lacak'},
    {'nama': 'Malik', 'lokasi': 'Lacak'},
    {'nama': 'Lana', 'lokasi': 'Lacak'},
    {'nama': 'Opet', 'lokasi': 'Lacak'},
    {'nama': 'Fandi', 'lokasi': 'Lacak'},
    {'nama': 'Adi', 'lokasi': 'Lacak'},
    {'nama': 'Ichsan', 'lokasi': 'Lacak'},
    {'nama': 'Rivan', 'lokasi': 'Lacak'},
    {'nama': 'Dafa', 'lokasi': 'Lacak'},
    {'nama': 'Yusril', 'lokasi': 'Lacak'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/logo.png', // Ganti dengan path logo kamu
              width: 40, // Ukuran logo
              height: 40,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            alignment: Alignment.center,
            child: Text(
              'List Anggota',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Table(
                border: TableBorder.all(),
                columnWidths: const {
                  0: FixedColumnWidth(40.0),
                  1: FixedColumnWidth(120.0), // Lebar kolom nama disesuaikan
                  2: FixedColumnWidth(100.0),
                },
                children: [
                  TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('No', textAlign: TextAlign.center),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Nama', textAlign: TextAlign.center),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Lokasi', textAlign: TextAlign.center),
                      ),
                    ],
                  ),
                  for (int index = 0; index < members.length; index++)
                    TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text('${index + 1}', textAlign: TextAlign.center),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            members[index]['nama']!,
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center( // Mengatur teks agar rata tengah
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green[300],
                                padding: EdgeInsets.symmetric(horizontal: 12), // Padding horizontal
                              ),
                              onPressed: () {
                                // Aksi Lacak bisa ditambahkan di sini
                              },
                              child: Text(members[index]['lokasi']!),
                            ),
                          ),
                        ),
                      ],
                    ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[300],
                  ),
                  onPressed: () {
                    // Kembali ke halaman sebelumnya
                  },
                  child: Text('Kembali', style: TextStyle(color: Colors.black)),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.green[300],
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.white), // Ubah ikon menjadi putih
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message, color: Colors.white), // Ubah ikon menjadi putih
            label: 'Mutasi',
          ),
          BottomNavigationBarItem(
            icon: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                border: Border.all(color: Colors.black, width: 2),
              ),
              padding: EdgeInsets.all(12),
              child: Icon(Icons.qr_code, size: 30, color: Colors.black), // QR code tetap hitam
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info, color: Colors.white), // Ubah ikon menjadi putih
            label: 'Info',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.white), // Ubah ikon menjadi putih
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.black, // Warna ikon saat dipilih
        unselectedItemColor: Colors.white, // Warna ikon saat tidak dipilih
        iconSize: 30, // Ukuran ikon
        onTap: (index) {
          // Tambahkan aksi ketika menekan ikon di sini, jika perlu
        },
      ),
    );
  }
}
