import 'package:flutter/material.dart';
import '../models/stock_model.dart';

class StockCard extends StatelessWidget {
  final Stock stock;
  StockCard({required this.stock});

  @override
  Widget build(BuildContext context) {
    final priceUp = stock.close >= stock.open;
    return Card(
      child: ListTile(
        title: Text(stock.symbol),
        subtitle: Text('Date: ${stock.date}'),
        trailing: Text(
          '${stock.close.toStringAsFixed(2)} €',
          style: TextStyle(color: priceUp ? Colors.green : Colors.red),
        ),
      ),
    );
  }
}
