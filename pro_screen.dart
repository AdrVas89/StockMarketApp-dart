// screens/pro_screen.dart
import 'package:flutter/material.dart';

class ProScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pro Version')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Upgrade to Pro to unlock features'),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              child: Text('Buy Pro'),
            ),
          ],
        ),
      ),
    );
  }
}
