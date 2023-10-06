

class FAQs {
  late int id;
  late String question;
  late String answer;
  late  String createdAt;
  late String updatedAt;

  FAQs(
      {
        required this.id,
        required this.question,
        required  this.answer,
        required this.createdAt,
        required this.updatedAt});

  FAQs.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    question = json['question'];
    answer = json['answer'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

}