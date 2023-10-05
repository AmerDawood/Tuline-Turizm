class Area {
  int? id;
  String? title;
  String? description;
  String? latitude;
  String? longitude;
  String? createdAt;
  String? updatedAt;

  Area(
      {this.id,
        this.title,
        this.description,
        this.latitude,
        this.longitude,
        this.createdAt,
        this.updatedAt});

  Area.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['description'] = this.description;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}