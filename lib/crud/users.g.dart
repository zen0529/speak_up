// // GENERATED CODE - DO NOT MODIFY BY HAND

// part of 'users.dart';

// // **************************************************************************
// // TypeAdapterGenerator
// // **************************************************************************

// class userAdapter extends TypeAdapter<user> {
//   @override
//   final int typeId = 1;

//   @override
//   user read(BinaryReader reader) {
//     final numOfFields = reader.readByte();
//     final fields = <int, dynamic>{
//       for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
//     };
//     return user(
//       email: fields[0] as String,
//       username: fields[0] as String,
//       password: fields[0] as String,
//       firstname: fields[0] as String,
//       middlename: fields[0] as String,
//       lastname: fields[0] as String,
//       address: fields[0] as String,
//       gender: fields[0] as String,
//       dateofbirth: fields[0] as String,
//     );
//   }

//   @override
//   void write(BinaryWriter writer, user obj) {
//     writer
//       ..writeByte(1)
//       ..writeByte(0)
//       ..write(obj.email);
//   }

//   @override
//   int get hashCode => typeId.hashCode;

//   @override
//   bool operator ==(Object other) =>
//       identical(this, other) ||
//       other is userAdapter &&
//           runtimeType == other.runtimeType &&
//           typeId == other.typeId;
// }
