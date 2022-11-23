// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_data_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class eventModelAdapter extends TypeAdapter<eventModel> {
  @override
  final int typeId = 1;

  @override
  eventModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return eventModel(
      fields[6] as String,
      path: fields[7] as String,
      discription: fields[1] as String,
      location: fields[2] as String,
      date: fields[3] as String,
      category: fields[4] as String,
      time: fields[5] as String,
      id: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, eventModel obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.discription)
      ..writeByte(2)
      ..write(obj.location)
      ..writeByte(3)
      ..write(obj.date)
      ..writeByte(4)
      ..write(obj.category)
      ..writeByte(5)
      ..write(obj.time)
      ..writeByte(6)
      ..write(obj.status)
      ..writeByte(7)
      ..write(obj.path);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is eventModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
