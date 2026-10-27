import 'package:flutter/material.dart';

class WaterTrackerPage extends StatelessWidget {
  const WaterTrackerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade50,
      appBar: AppBar(
        title: const Text('Water Tracker'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: Image.asset(
                    'assets/images/water.webp',
                    width: 110,
                    height: 110,
                    fit: BoxFit.contain,
                    errorBuilder: (context, error, stackTrace) {
                      return const Text('Failed to load water image');
                    },
                  ),
                ),

                const Text(
                  'Stay Hydrated!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo,
                  ),
                ),
                const Text(
                  'Build a healthy daily habit',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.indigo),
                ),

                const SizedBox(height: 24),

                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(24),
                  margin: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Daily Water Goal',
                        style: TextStyle(fontSize: 18, color: Colors.indigo),
                      ),

                      Text(
                        '8',
                        style: TextStyle(
                          fontSize: 70,
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo,
                        ),
                      ),
                      Text(
                        'glasses per day',
                        style: TextStyle(fontSize: 14, color: Colors.indigo),
                      ),
                    ],
                  ),
                ),

                Column(
                  children: [
                    Card(
                      color: Colors.lightBlue,
                      margin: const EdgeInsets.only(bottom: 16),
                      child: const ListTile(
                        title: Text(
                          'Drink water regularly',
                          style: TextStyle(
                            color: Colors.indigo,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),

                    Card(
                      color: Colors.lightBlue,
                      margin: const EdgeInsets.only(bottom: 16),
                      child: const ListTile(
                        title: Text(
                          'Bring your water bottle',
                          style: TextStyle(
                            color: Colors.indigo,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),

                    Text(
                      'Every glass counts!',
                      style: TextStyle(color: Colors.indigo),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
