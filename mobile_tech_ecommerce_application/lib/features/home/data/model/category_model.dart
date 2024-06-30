import 'package:uuid/uuid.dart';
import 'package:uuid/v4.dart';

class CategoryModel {
  final String guid;
  final String name;
  final String image;

  const CategoryModel(this.guid, {required this.name, required this.image});
}
