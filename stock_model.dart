class Stock {
  final String symbol;
  final double open;
  final double close;
  final String date;

  Stock({required this.symbol, required this.open, required this.close, required this.date});

  factory Stock.fromJson(Map<String, dynamic> json) {
    return Stock(
      symbol: json['symbol'],
      open: json['open'].toDouble(),
      close: json['close'].toDouble(),
      date: json['date'],
    );
  }
}
