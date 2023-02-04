import 'dart:convert';

import 'package:aula1/model/MovieModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';

class MoviesScreen extends StatefulWidget {
  static const String id = '/movies_screen';

  const MoviesScreen({Key? key}) : super(key: key);

  @override
  State<MoviesScreen> createState() => _MoviesScreenState();
}

class _MoviesScreenState extends State<MoviesScreen> {
  //var moviesList = <MovieModel>[];
  List<MovieModel> moviesList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchMovies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.separated(
          itemCount: moviesList.length,
          padding: EdgeInsets.symmetric(horizontal: 16),
          separatorBuilder: (_, __) => const SizedBox(
            height: 16,
          ),
          itemBuilder: (_, index) {
            final movie = moviesList[index];
            return Material(
              elevation: 4,
              borderRadius: BorderRadius.circular(16),
              child: SizedBox(
                height: 140,
                child: Row(
                  children: [
                    Expanded(
                        child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(16),
                                bottomLeft: Radius.circular(16)),
                            child:
                                Image.network(movie.image, fit: BoxFit.cover))),
                    const SizedBox(width: 16),
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Text(
                            movie.title,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            movie.description,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 5,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Future<void> fetchMovies() async {
    try {
      final url = Uri.parse('https://demo7206081.mockable.io/movies');
      final response = await Client().get(url);
      final moviesListJson = jsonDecode(response.body);
      moviesList = moviesListJson['results']
          .map<MovieModel>((movieJson) => MovieModel.fromJson(movieJson))
          .toList();
      setState(() {});
    } catch (e) {
      print('Deu ruim');
    }
  }
}
