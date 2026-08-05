// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class MinumanModel {
  final String nama;
  final String gambar;
  final String deskripsi;
  MinumanModel({
    required this.nama,
    required this.gambar,
    required this.deskripsi,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nama': nama,
      'gambar': gambar,
      'deskripsi': deskripsi,
    };
  }

  factory MinumanModel.fromMap(Map<String, dynamic> map) {
    return MinumanModel(
      nama: map['nama'] as String,
      gambar: map['gambar'] as String,
      deskripsi: map['deskripsi'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory MinumanModel.fromJson(String source) =>
      MinumanModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
