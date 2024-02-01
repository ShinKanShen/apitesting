
import 'package:flutter/material.dart';

import '../models/user_info_post.dart';
import '../models/vn_30_model.dart';
import '../services/api_chungkhoan.dart';

class ListChungKhoanScreen3 extends StatefulWidget {
  const ListChungKhoanScreen3({Key? key}) : super(key: key);

  @override
  State<ListChungKhoanScreen3> createState() => _ListChungKhoanScreenState();
}

class _ListChungKhoanScreenState extends State<ListChungKhoanScreen3> {

  late final AppApiService _apiService;
  @override
  void initState() {
    _apiService = AppApiService();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Chung Khoan Screen"),
      ),
      body:Container(
        margin: EdgeInsets.all(16),
        child: FutureBuilder(
          future: _apiService.getChungKhoan('HNX30'), 
          builder: (context, snapshot){
            if(snapshot.hasData){
              ChungKhoan2? multiUserData = snapshot.data;

              if(multiUserData!=null){
                List usersInfo = multiUserData.data;
                
                return Column(
                  children: [
                    
                    Expanded(
                      child: ListView.builder(
                        itemCount: usersInfo.length,
                        itemBuilder: (context, index){
                          final user = usersInfo[index];
                          return ListTile(
                            title: Text(user.toString()),
                            
                            
                      
                          );
                        }
                      
                        ),
                    ),
                  ],
                );


              }

            }
            return CircularProgressIndicator();
          }
          
          ),
      )
          
        
    ); 
  }
}