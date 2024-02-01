



class InstrumentInfo {
  String? symbol;
  String? fullname;
  String? exchange;
  
  double? closePrice;
  double? change;
  double? changePercent;
  
  
  int? totalTrading;
  

  ///Hop dong mo phai sinh
 

  InstrumentInfo.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    symbol = json['symbol'];
    fullname = json['FullName'];
    exchange = json['exchange'];
    
    closePrice = json['closePrice'].toDouble();
    change = json['change'].toDouble();
    changePercent =json['changePercent'].toDouble();
   
    totalTrading = json['totalTrading'] ?? 0;
    
  }

  InstrumentInfo.clone(InstrumentInfo source) {
    if (source == null) return;
    symbol = source.symbol;
    fullname = source.fullname;
    exchange = source.exchange;
    closePrice = source.closePrice;
    change = source.change;
    changePercent = source.changePercent;
    totalTrading = source.totalTrading;
    
  }
}
