class CategoryModel {
  final String uuid;
  final String name;
  final String image;

  CategoryModel({required this.uuid, required this.name, required this.image});

  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
        uuid: json['uuid'] as String,
        name: json['name'] as String,
        image: json['image'] as String,
      );

  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'name': name,
        'image': image,
      };
}
