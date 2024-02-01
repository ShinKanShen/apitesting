import 'package:flutter/material.dart';

import '../models/user_info_post.dart';
import '../services/api_chungkhoan.dart';

class ListChungKhoanScreen extends StatefulWidget {
  const ListChungKhoanScreen({Key? key}) : super(key: key);

  @override
  State<ListChungKhoanScreen> createState() => _ListChungKhoanScreenState();
}

class _ListChungKhoanScreenState extends State<ListChungKhoanScreen> {
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
        body: Container(
          margin: EdgeInsets.all(16),
          child: FutureBuilder(
              future: _apiService.getChungKhoan2(),
              builder: (context, snapshot) {
               if (snapshot.hasError) {
            return const Center(
              child: Text('An error has occurred!'),
            );
          } else  if (snapshot.hasData) {
                  ChungKhoan? multiUserData = snapshot.data;
                  if (multiUserData != null) {
                    List<Data> usersInfo = multiUserData.instrumentInfoList;
                    return Column(
                      children: [
                        Expanded(
                          child: ListView.builder(
                              itemCount: usersInfo.length,
                              itemBuilder: (context, index) {
                                final user = usersInfo[index];
                                return ListTile(
                                  title:
                                      Text(' ${user.fullname}'),
                                  subtitle: Text(user.totalTrading.toString()),
                                );
                              }),
                        ),
                      ],
                    );
                  }
                }
                return CircularProgressIndicator();
              }),
        ));
  }
}
