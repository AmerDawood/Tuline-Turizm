class Section {
  int? id;
  String? name;
  String? image;
  String? status;
  String? createdAt;
  String? updatedAt;

  Section(
      {this.id,
        this.name,
        this.image,
        this.status,
        this.createdAt,
        this.updatedAt});

  Section.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['image'] = this.image;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}