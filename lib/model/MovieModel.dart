import 'dart:convert';

class MovieModel {
  MovieModel({
    required this.description,
    required this.image,
    required this.title,
  });

  final String title;
  final String description;
  final String image;

  factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
        title: json['original_title'],
        description: json['overview'],
        image: json['poster_path'],
      );
}
