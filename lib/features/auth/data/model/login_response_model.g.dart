// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LoginResponseModelAdapter extends TypeAdapter<LoginResponseModel> {
  @override
  final int typeId = 0;

  @override
  LoginResponseModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LoginResponseModel(
      id: fields[0] as int?,
      token: fields[1] as String?,
      fullname: fields[2] as String?,
      roleId: fields[3] as String?,
      phone: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, LoginResponseModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.token)
      ..writeByte(2)
      ..write(obj.fullname)
      ..writeByte(3)
      ..write(obj.roleId)
      ..writeByte(4)
      ..write(obj.phone);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LoginResponseModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
