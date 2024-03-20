import 'package:hive/hive.dart';

part 'note_model.g.dart';

@HiveType(typeId: 2)
class EdaraModel extends HiveObject {
  @HiveField(0)
  String title;
  @HiveField(1)
  String subTitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
  int color;

  EdaraModel({
    required this.title,
    required this.subTitle,
    required this.date,
    required this.color,
  });
}