// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db_book.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BookDbAdapter extends TypeAdapter<BookDb> {
  @override
  final int typeId = 0;

  @override
  BookDb read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BookDb(
      fields[0] as int,
      fields[1] as String,
      fields[2] as String,
      fields[3] as int,
      fields[4] as String,
      fields[5] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, BookDb obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.author)
      ..writeByte(3)
      ..write(obj.publicationDate)
      ..writeByte(4)
      ..write(obj.about)
      ..writeByte(5)
      ..write(obj.readAlready);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BookDbAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
