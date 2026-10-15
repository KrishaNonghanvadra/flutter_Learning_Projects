import 'package:flutter/material.dart';

/// Greeting card at the top of the home screen.
class HeaderCard extends StatelessWidget {
  const HeaderCard({super.key});

  // >>> Q6A5 START
  Widget _flame() {
    return const Icon(
      Icons.local_fire_department,
      size: 44,
      color: Colors.orange,
    );
  }
  // <<< Q6A5 END

  @override
  Widget build(BuildContext context) {
    // >>> Q3 START
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          _flame(),
          const SizedBox(width: 8),
          const Text('HabitHero'),
        ],
      ),
    );
    // <<< Q3 END
  }
}
