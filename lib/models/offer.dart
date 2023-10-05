
class Offers {
  int? id;
  int? sectionId;
  int? areaId;
  String? name;
  String? description;
  String? image;
  String? status;
  String? createdAt;
  String? updatedAt;
  String? price;
  String? daysNumber;

  Offers(
      {this.id,
        this.sectionId,
        this.areaId,
        this.name,
        this.description,
        this.image,
        this.status,
        this.createdAt,
        this.updatedAt,
        this.price,
        this.daysNumber});

  Offers.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    sectionId = json['section_id'];
    areaId = json['area_id'];
    name = json['name'];
    description = json['description'];
    image = json['image'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    price = json['price'];
    daysNumber = json['days_number'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['section_id'] = this.sectionId;
    data['area_id'] = this.areaId;
    data['name'] = this.name;
    data['description'] = this.description;
    data['image'] = this.image;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['price'] = this.price;
    data['days_number'] = this.daysNumber;
    return data;
  }
}