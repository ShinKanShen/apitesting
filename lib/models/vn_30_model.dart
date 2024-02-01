

class ChungKhoan2{
  List data;
  ChungKhoan2({
    required this.data
  });

  factory ChungKhoan2.fromJson(Map<String, dynamic> json)=> ChungKhoan2(
    data: List<dynamic>.from(json['d'])
    );

  Map<String, dynamic> toJson() => {
    'd':data.map((e) => e.toJson()).toList()
  };
}