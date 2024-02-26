// import 'package:api_test/models/user_model.dart';
// import 'package:api_test/services/api_serviec.dart';
// import 'package:flutter/material.dart';

// class CallMultiUsers extends StatefulWidget {
//   const CallMultiUsers({super.key});

//   @override
//   State<CallMultiUsers> createState() => _CallMultiUsersState();
// }

// class _CallMultiUsersState extends State<CallMultiUsers> {

//   late final ApiService  _apiService ;

// @override
//   void initState() {
//     _apiService = ApiService();
    
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Deno page'),
        

//       ),
    //   body:Container(
    //     margin: EdgeInsets.all(16),
    //     child: FutureBuilder(
    //       future: _apiService.getMultiUsers(page: '2'), 
    //       builder: (context, snapshot){
    //         if(snapshot.hasData){
    //           MultiUsers? multiUserData = snapshot.data;

    //           if(multiUserData!=null){
    //             List<Data> usersInfo = multiUserData.data;
                
    //             return Column(
    //               children: [
    //                 Text(multiUserData.numPerPage.toString()),
    //                 Text(multiUserData.total.toString()),
    //                 Text(multiUserData.totalPage.toString()),
    //                 Expanded(
    //                   child: ListView.builder(
    //                     itemCount: multiUserData.numPerPage,
    //                     itemBuilder: (context, index){
    //                       final user = usersInfo[index];
    //                       return ListTile(
    //                         title: Text('${user.firstName} ${user.lastName}'),
    //                         leading: Image.network(user.avatar),
    //                         subtitle: Text(user.email),
                      
    //                       );
    //                     }
                      
    //                     ),
    //                 ),
    //               ],
    //             );


    //           }

    //         }
    //         return CircularProgressIndicator();
    //       }
          
    //       ),
    //   )
          
        
    // ); 
//   }
// }