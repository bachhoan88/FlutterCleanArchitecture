import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
part 'genre.g.dart';
part 'genre.freezed.dart';

@freezed
abstract class Genre with _$Genre {
  factory Genre({int id, String name}) = _Genre;

  factory Genre.fromJson(Map<String, dynamic> json) => _$GenreFromJson(json);
}