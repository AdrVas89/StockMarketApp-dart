import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/stock_model.dart';

class ApiService {
  final String apiKey = 'YOUR_MARKETSTACK_API_KEY';

  Future<List<Stock>> fetchStocks() async {
    final url = Uri.parse('http://api.marketstack.com/v1/eod?access_key=$apiKey&limit=5&symbols=AAPL,GOOGL,TSLA');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = json.decode(response.body)['data'] as List;
      return data.map((json) => Stock.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load stock data');
    }
  }
}
