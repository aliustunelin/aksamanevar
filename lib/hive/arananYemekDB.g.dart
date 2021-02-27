part of 'arananYemekDB.dart';
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ArananYemekDBAdapter extends TypeAdapter<ArananYemekDB> {
  @override
  final int typeId = 0;

  @override
  ArananYemekDB read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ArananYemekDB(
      baslik: fields[0] as String,
      metin: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ArananYemekDB obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.baslik)
      ..writeByte(1)
      ..write(obj.metin);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ArananYemekDBAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
