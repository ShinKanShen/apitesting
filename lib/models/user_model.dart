// class User {
//   User({
//     required this.data,
//   });

//   Data data;

//   factory User.fromJson(Map<String, dynamic> json) => User(
//         data: Data.fromJson(json["data"] ),
//       );

//   Map<String, dynamic> toJson() => {
//         "data": data.toJson(),
//       };
// }

// class MultiUsers{
//   int numPerPage;
//   int page;
//   int total;
//   int totalPage;
//   List<Data> data;

//   MultiUsers({
//     required this.page,
//     required this.numPerPage,
//     required this.total,
//     required this.totalPage,
//     required this.data
//   });

//   factory MultiUsers.fromJson(Map<String, dynamic> json)=> MultiUsers(
//     page: json['page'], numPerPage: json['per_page'],
//     total: json['total'], totalPage: json['total_pages'],
//     data: List<dynamic>.from(json['data']).map((e) => Data.fromJson(e)).toList()
//     );
//   Map<String, dynamic> toJson()=> {
//     'page': page,
//     'per_page': numPerPage,
//     'total': total,
//     'total_pages': totalPage,
//     'data': data.map((e) => e.toJson()).toList(),
//   };


// }


// class Data {
//   Data({
//     required this.id,
//     required this.email,
//     required this.firstName,
//     required this.lastName,
//     required this.avatar,
//   });

//   int id;
//   String email;
//   String firstName;
//   String lastName;
//   String avatar;

//   factory Data.fromJson(Map<String, dynamic> json) => Data(
//         id: json["id"],
//         email: json["email"],
//         firstName: json["first_name"],
//         lastName: json["last_name"],
//         avatar: json["avatar"],
//       );

//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "email": email,
//         "first_name": firstName,
//         "last_name": lastName,
//         "avatar": avatar,
//       };
// }
