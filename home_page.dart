import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<_Feature> features = [
    _Feature("Peta OSM", Icons.map, '/map'),
    _Feature("Kamera", Icons.camera_alt, '/camera'),
    _Feature("Grafik", Icons.bar_chart, '/grafik'),
    _Feature("SMS Autofill", Icons.sms, '/sms'),
    _Feature("Autocomplete & Spinner", Icons.list_alt, '/autocomplete'),
    _Feature("Thread & AsyncTask", Icons.sync, '/thread'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Menu Fitur Rafli Ramanda"),
        backgroundColor: Colors.blue.shade700,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          childAspectRatio: 1,
          children: features.map((f) {
            return InkWell(
              onTap: () => Navigator.pushNamed(context, f.route),
              borderRadius: BorderRadius.circular(16),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.green.shade700,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.red,
                      blurRadius: 6,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(f.icon, size: 40, color: Colors.yellowAccent),
                    const SizedBox(height: 12),
                    Text(
                      f.label,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class _Feature {
  final String label;
  final IconData icon;
  final String route;

  _Feature(this.label, this.icon, this.route);
}
