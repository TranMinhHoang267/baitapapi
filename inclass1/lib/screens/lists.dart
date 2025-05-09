import 'package:flutter/material.dart';
import 'textdetail.dart';

class ListTileExample extends StatelessWidget {
  const ListTileExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Components')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'UI Components List',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Display Group
            const Text(
              'Display',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            _buildTile(
              title: 'Text',
              subtitle: 'Displays text',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TextDetailPage(),
                  ),
                );
              },
            ),
            _buildTile(title: 'Image', subtitle: 'Displays an image'),

            const SizedBox(height: 20),

            // Input Group
            const Text('Input', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            _buildTile(title: 'TextField', subtitle: 'Input field for text'),
            _buildTile(
              title: 'PasswordField',
              subtitle: 'Input field for passwords',
            ),

            const SizedBox(height: 20),

            // Layout Group
            const Text('Layout', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            _buildTile(
              title: 'Column',
              subtitle: 'Arranges elements vertically',
            ),
            _buildTile(
              title: 'Row',
              subtitle: 'Arranges elements horizontally',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTile({
    required String title,
    required String subtitle,
    VoidCallback? onTap,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      decoration: BoxDecoration(
        color: Colors.lightBlue[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
        onTap: onTap,
      ),
    );
  }
}
