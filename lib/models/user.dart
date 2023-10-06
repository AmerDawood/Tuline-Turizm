

class User {
  String? name;
  String? email;
  String? type;
  String? updatedAt;
  String ?createdAt;
  String ?token;
  int? id;

  // User(
  //     {this.name,
  //       this.email,
  //       this.type,
  //       this.updatedAt,
  //       this.createdAt,
  //       this.id});

  User.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    type = json['type'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    id = json['id'];
    token = json['token'];
  }


}