import 'package:batman_database/models/movie.dart';
import 'package:batman_database/styles/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MovieDetails extends StatelessWidget {
  final Movie movie;

  const MovieDetails({required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          movie.title,
          style: Styles.textTitleDecorative,
        ),
        backgroundColor: Styles.colorDarkGraySecondary,
      ),
      body: _movieDetails(),
      backgroundColor: Styles.colorLightGray,
    );
  }

  Widget _movieDetails() {
    return ListView(
      children: [_movieText(), _moviePoster()],
    );
  }

  Widget _movieText() {
    return Container(
      child: Column(
        children: [
          _movieTitle(),
          _movieYear(),
        ],
      ),
      padding: Styles.insetsDefault,
    );
  }

  Widget _movieTitle() {
    return Text(movie.title,
        style: Styles.textLargeDecorative, textAlign: TextAlign.center);
  }

  Widget _movieYear() {
    return Text(
      movie.year,
      style: Styles.textSmallDecorative,
    );
  }

  Widget _moviePoster() {
    return Container(
        constraints: const BoxConstraints.tightFor(width: 100.0, height: 500.0),
        child: Image.network(
          movie.url,
          fit: BoxFit.fitHeight,
        )
    );
  }
}
