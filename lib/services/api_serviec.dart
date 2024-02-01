// import 'dart:io';

// import 'package:api_test/models/user_model.dart';
// import 'package:dio/dio.dart';

// class ApiService {
//   final Dio _dio = Dio();
//   final baseUrl = 'https://reqres.in/api';

  

// // get page   
// Future<MultiUsers?> getMultiUsers({required String  page}) async{
//   MultiUsers? mulUsers;
//   try{
//     Response response = await _dio.get('$baseUrl/users?page=$page');
//     print("Multiuser info: ${response.data}");
//     mulUsers = MultiUsers.fromJson(response.data);
//   } on DioException catch(e){
//     if (e.response != null) {
//       print('Dio error!');
//       print('STATUS: ${e.response?.statusCode}');
//       print('DATA: ${e.response?.data}');
//       print('HEADERS: ${e.response?.headers}');
//     } else {
//       // Error due to setting up or sending the request
//       print('Error sending request!');
//       print(e.message);
//     }
//   }
//   return mulUsers;
  
// }
  
// // get single user
// Future<User?> getSingleUser({required String id}) async {
//   User? user;
//   try {
//     Response userData = await _dio.get('$baseUrl/users/$id');
//     print('User Info: ${userData.data}');
//     user = User.fromJson(userData.data);
//   } on DioException catch (e) {
//     // The request was made and the server responded with a status code
//     // that falls out of the range of 2xx and is also not 304.
//     if (e.response != null) {
//       print('Dio error!');
//       print('STATUS: ${e.response?.statusCode}');
//       print('DATA: ${e.response?.data}');
//       print('HEADERS: ${e.response?.headers}');
//     } else {
//       // Error due to setting up or sending the request
//       print('Error sending request!');
//       print(e.message);
//     }
//   }
//   return user;
// }



//   // initializaInterceptor(){
//   //   _dio.interceptors.add(
//   //     InterceptorsWrapper(
//   //       onError: (error, handler){
//   //             print(error.message );
//   //       },
//   //       onRequest:(request, handler){
//   //          print("${request.method} ${request.path}");
//   //       } ,
//   //       onResponse: (response, handler){
//   //          print(response.data);
//   //       },
//   //     )
//   //   );
//   // }

// }