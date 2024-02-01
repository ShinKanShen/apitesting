class Data {
    String? symbol;
  String? fullname;
  String? exchange;
  
  double? closePrice;
  double? change;
  double? changePercent;
  
  
  int? totalTrading;
  // Data({
   
  //   required this.symbol,
  //   required this.fullname,
  //   required this.change,
  //   required this.changePercent,
  //   required this.exchange,
  //   required this.totalTrading,
  //   required this.closePrice,
  // });

  Data.fromJson(Map<String, dynamic> json) {
     if (json == null) return;
    symbol = json['symbol'];
    fullname = json['FullName'];
    exchange = json['exchange'];
    
     closePrice = deserializeBaseType('${json['closePrice']}','double');
     change = deserializeBaseType('${json['change']}','double');
     changePercent = deserializeBaseType('${json['changePercent']}','double');
   
    totalTrading = json['totalTrading'] ?? 0;
        
  }
  
  Data.clone(Data? source) {
    if (source == null) return;
    symbol = source.symbol;
    fullname = source.fullname;
    exchange = source.exchange;
    closePrice = source.closePrice;
    change = source.change;
    changePercent = source.changePercent;
    totalTrading = source.totalTrading;
    
  }


  Map<String, dynamic> toJson() => {
        
        'symbol': symbol,
        'FullName': fullname,
        'change': change,
        'changePercent': changePercent,
        'exchange': exchange,
        'totalTrading': totalTrading,
        'closePrice': closePrice,
      };

  dynamic deserializeBaseType(dynamic value, String targetType) {
    try {
      if (value == null) return null;
      switch (targetType) {
        case 'String':
          return '$value';
        case 'int':
          return value is int ? value : int.tryParse('$value');
        case 'bool':
          return value is bool ? value : '$value'.toLowerCase() == 'true';
        case 'double':
          return value is double ? value : double.tryParse('$value');

        default:
          return null;
      }
    } catch (ex, stacktrace) {
      print('parameterToString:::Stacktrace: ' + stacktrace.toString());
    }

    return null;
  }
}

class ChungKhoan{
  late List<Data> instrumentInfoList;

  ChungKhoan();

  ChungKhoan.fromJson(List? jsonArray) {
    if (jsonArray == null) return;

    instrumentInfoList = <Data>[];
    for (var json in jsonArray) {
      Data indexData = Data.fromJson(json);
      instrumentInfoList.add(indexData);
    }

    
  }

  Map<String, dynamic> toJson() {
    return {};
  }
}
