import 'package:hive/hive.dart';

part 'db_book.g.dart';

@HiveType(typeId: 0)
class BookDb extends HiveObject {
  BookDb(
    this.id,
    this.title,
    this.author,
    this.publicationDate,
    this.about,
    this.readAlready,
  );

  @HiveField(0)
  int id;

  @HiveField(1)
  String title;

  @HiveField(2)
  String author;

  @HiveField(3)
  int publicationDate;

  @HiveField(4)
  String about;

  @HiveField(5)
  bool readAlready;
}
