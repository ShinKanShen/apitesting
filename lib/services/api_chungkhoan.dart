import 'package:dio/dio.dart';

import '../instrument_info_list_response.dart';
import '../models/user_info_post.dart';
import '../models/vn_30_model.dart';

class AppApiService {
  final Dio _dio = Dio();
  final _baseUrl = 'http://103.219.180.159/datafeed';

  Future<ChungKhoan2?> getChungKhoan(String? marketcode) async {
    ChungKhoan2? chungkhoans;
    try {
      Response chungKhoanData =
          await _dio.get('$_baseUrl/instruments/$marketcode');
      print('chungkhoan data: ${chungKhoanData.data}');
      
      chungkhoans = ChungKhoan2.fromJson(chungKhoanData.data);
      
      
      // print(chungkhoans);
    } on DioException catch (e) {
      if (e.response != null) {
        print('Dio error!');
        print('STATUS: ${e.response?.statusCode}');
        print('DATA: ${e.response?.data}');
        print('HEADERS: ${e.response?.headers}');
      } else {
        // Error due to setting up or sending the request
        print('Error sending request!');
        print(e.message);
      }
    }
    
    return chungkhoans;
  }

  
  Future<ChungKhoan?> getChungKhoan2() async {
    ChungKhoan? chungkhoans;
    try {
      Response chungKhoanData =await _dio.get('$_baseUrl/instruments/');
          
       print('chungkhoan data: ${chungKhoanData.data['d']}');
      // InstrumentInfoListResponse.fromJson(chungKhoanData.data['d']);
      chungkhoans = ChungKhoan.fromJson(chungKhoanData.data['d']);  
      
    } on DioException catch (e) {
      if (e.response != null) {
        print('Dio error!');
        print('STATUS: ${e.response?.statusCode}');
        print('DATA: ${e.response?.data}');
        print('HEADERS: ${e.response?.headers}');
      } else {
        // Error due to setting up or sending the request
        print('Error sending request!');
        print(e.message);
      }
    }
    if (chungkhoans != null) {
      print('chung khoán: ${chungkhoans.toJson()}');
    } else {
      print('chung khoán is null');
    }
    return chungkhoans;
  }
}