import 'package:flutter/material.dart';
import '../services/api_service.dart';
import '../models/stock_model.dart';
import '../widgets/stock_card.dart';
import 'news_screen.dart';
import 'stock_detail_screen.dart';
import 'portfolio_screen.dart';
import 'pro_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Stock> stocks = [];

  @override
  void initState() {
    super.initState();
    fetchStockData();
  }

  void fetchStockData() async {
    List<Stock> data = await ApiService().fetchStocks();
    setState(() {
      stocks = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stock Market')),
      body: ListView.builder(
        itemCount: stocks.length,
        itemBuilder: (context, index) => GestureDetector(
          child: StockCard(stock: stocks[index]),
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => StockDetailScreen(stock: stocks[index])),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text('Menu')),
            ListTile(
              title: Text('News'),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => NewsScreen())),
            ),
            ListTile(
              title: Text('Portfolio'),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => PortfolioScreen())),
            ),
            ListTile(
              title: Text('Pro Version'),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => ProScreen())),
            ),
          ],
        ),
      ),
    );
  }
}
