import 'package:batman_database/data_fetcher.dart';
import 'package:batman_database/models/movie.dart';
import 'package:batman_database/styles/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './movie_details.dart';

class MoviesList extends StatefulWidget {
  const MoviesList({Key? key}) : super(key: key);

  @override
  _MoviesListState createState() => _MoviesListState();
}

class _MoviesListState extends State<MoviesList> {
  var data;

  @override
  void initState() {
    super.initState();
    DataFetcher.fetchData().then((value) {
      setState(() {
        data = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Movies Database',
            style: Styles.textTitleDecorative,
          ),
          backgroundColor: Styles.colorDarkGraySecondary),
      body: data == null
          ? _loadingItem(
              'https://c.tenor.com/I6kN-6X7nhAAAAAj/loading-buffering.gif')
          : ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) =>
                  _listViewItemBuilder(context, index)),
    );
  }

  Widget _listViewItemBuilder(BuildContext context, int index) {
    var dataParsed = data[index];
    String title = dataParsed['Title'] as String;
    String year = dataParsed['Year'] as String;
    String url = dataParsed['Poster'] as String;
    Movie movie = Movie(title: title, year: year, url: url);
    return ListTile(
        contentPadding: const EdgeInsets.all(10.0),
        leading: _itemYear(movie),
        title: _itemTitle(movie),
        tileColor: (index % 2 == 0 ? Styles.colorLightGray : Styles.colorWhite),
        onTap: () => _navigationToMovieDetail(context, movie));
  }

  Widget _itemTitle(Movie movie) {
    return Text(movie.title, style: Styles.textDefault, textAlign: TextAlign.center,);
  }

  Widget _itemYear(Movie movie) {
    return Container(
        child: Center(child: Text(movie.year, style: Styles.textSmall)),
        width: 100);
  }

  void _navigationToMovieDetail(BuildContext context, Movie movie) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => MovieDetails(movie: movie)));
  }

  Widget _loadingItem(String url) {
    return Center(
        child: Container(
      child: Image.network(
        url,
        fit: BoxFit.fill,
      ),
      constraints: BoxConstraints.tightFor(width: 60.0),
    ));
  }
}
