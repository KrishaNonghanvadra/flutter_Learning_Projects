import 'package:flutter/material.dart';

/// Small statistic card (icon, big value, caption) for the Stats page.
class StatCard extends StatelessWidget {
  const StatCard({
    super.key,
    required this.label,
    required this.value,
    required this.icon,
  });

  final String label;
  final String value; 
  // fix 1 : missing Semicolon
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Card(
      // fix 4 : add return keyword before Card
      elevation: 3,
      // fix : 3 elevation data type is double
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 32, color: Colors.deepPurple),
            const SizedBox(height: 8),
            Text(
              value,
              style: const TextStyle(
                fontSize: 28, 
                fontWeight: FontWeight.bold
              ),
            ),
            // fix 2 : add closing bracket before text widget
            Text(
              label, 
              style: const TextStyle(color: Colors.grey)
            ),
          ],
        ),
      ),
    );
  }
}
