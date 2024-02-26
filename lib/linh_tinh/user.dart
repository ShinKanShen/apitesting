




class UserSingle{
  int id;
  String email;
  String firstName;
  String lastName;
  String avatar;
  UserSingle({
    required this.id, required this.email,
    required this.firstName, required this.lastName, 
    required this.avatar,
  });

  

  factory UserSingle.fromJson(Map<String, dynamic> json) => UserSingle(
  id: json['id'], email: json['name'], 
  firstName: json['first_name'], lastName: json['last_name'], 
  avatar: json['avatar']);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson()=> {
    'id':id,
    'email':email,
    'first_name':firstName,
    'last_name':lastName,
    'avatar': avatar,
  };}
