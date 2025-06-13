// screens/stock_detail_screen.dart
import 'package:flutter/material.dart';
import '../models/stock_model.dart';

class StockDetailScreen extends StatelessWidget {
  final Stock stock;
  StockDetailScreen({required this.stock});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${stock.symbol} Details')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Open: ${stock.open} €'),
            Text('Close: ${stock.close} €'),
            Text('Date: ${stock.date}'),
            SizedBox(height: 20),
            Text('Charts and more data coming soon...'),
          ],
        ),
      ),
    );
  }
}
