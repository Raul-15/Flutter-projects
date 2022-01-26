import 'package:flutter/material.dart';
import 'package:pelicula_app/providers/movies_providers.dart';
import 'package:pelicula_app/search/search_delegate.dart';
import 'package:pelicula_app/widgets/widgets.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final moviesProvider = Provider.of<MoviesProvider>(context);
    //print(moviesProvider.onDisplayMovies);
    return Scaffold(
        appBar: AppBar(
          title: Text('Peliculas en cine'),
          centerTitle: true,
          elevation: 0,
          actions: [
            IconButton(
                icon: Icon(Icons.search_outlined),
                onPressed: () => showSearch(
                    context: context, delegate: MovieSearchDelegate()))
          ],
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            //Tarjetas principales
            CardSwiper(movies: moviesProvider.onDisplayMovies),

            //Slider de peliculas
            MovieSlider(
              movies: moviesProvider.popularMovies,
              title: 'Populares',
              onNextPage: () => moviesProvider.getPopularMovies(),
            )
          ],
        )));
  }
}
