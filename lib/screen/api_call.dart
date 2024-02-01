// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';

// import '../services/api_serviec.dart';
// import '../models/user_model.dart';


// class ApiCall extends StatefulWidget{
//   const ApiCall({super.key});


//   @override
//   State<ApiCall> createState() => _ApiCallState();
// }

// class _ApiCallState extends State<ApiCall> {

//   final ApiService  _apiService = ApiService();

//   // Future<Map<String, dynamic>> fetchDataApi () async{
//   //   var dio = Dio();
//   //   var response = await dio.get('https://reqres.in/api/users/5');

//   //   print(response.data);
//   //   return response.data;
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return 
//        Center(
//         child: FutureBuilder<User?>(
//           future: _apiService.getSingleUser(id: '3'),
//           builder: (context, snapshot) {
//             if (snapshot.hasData) {
//               User? userInfo = snapshot.data;
//               if (userInfo != null) {
//                 Data userData = userInfo.data;
//                 return Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Image.network(userData.avatar),
//                     SizedBox(height: 8.0),
//                     Text(
//                       '${userInfo.data.firstName} ${userInfo.data.lastName}',
//                       style: TextStyle(fontSize: 16.0),
//                     ),
//                     Text(
//                       userData.email,
//                       style: TextStyle(fontSize: 16.0),
//                     ),
//                   ],
//                 );
//               }
//             }
//             return CircularProgressIndicator();
//           },
//         ),
//       );
    
//   }
// }