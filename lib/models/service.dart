import 'package:tuline_turizm/models/area.dart';
import 'package:tuline_turizm/models/section.dart';

class Services {
  int? id;
  int? sectionId;
  int? areaId;
  String? name;
  String? description;
  String? image;
  String? from;
  String? status;
  String? createdAt;
  String? updatedAt;
  String? price;
  String? daysNumber;
  Section? section;
  Area? area;

  Services(
      {
        this.id,
           this.sectionId,
          this.areaId,
           this.name,
          this.description,
          this.image,
        this.from,
        this.status,
        this.createdAt,
        this.updatedAt,
        this.price,
        this.daysNumber,
        this.section,
        this.area});

  Services.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    sectionId = json['section_id'];
    areaId = json['area_id'];
    name = json['name'];
    description = json['description'];
    image = json['image'];
    from = json['from'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    price = json['price'];
    daysNumber = json['days_number'];
    section =
    json['section'] != null ? new Section.fromJson(json['section']) : null;
    area = json['area'] != null ? new Area.fromJson(json['area']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['section_id'] = this.sectionId;
    data['area_id'] = this.areaId;
    data['name'] = this.name;
    data['description'] = this.description;
    data['image'] = this.image;
    data['from'] = this.from;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['price'] = this.price;
    data['days_number'] = this.daysNumber;
    if (this.section != null) {
      data['section'] = this.section!.toJson();
    }
    if (this.area != null) {
      data['area'] = this.area!.toJson();
    }
    return data;
  }
}