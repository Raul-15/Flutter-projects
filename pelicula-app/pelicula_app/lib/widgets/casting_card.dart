import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pelicula_app/models/models.dart';
import 'package:pelicula_app/providers/movies_providers.dart';
import 'package:provider/provider.dart';

class CastingCards extends StatelessWidget {
  final int movieId;

  const CastingCards(this.movieId);
  @override
  Widget build(BuildContext context) {
    final moviesProvider = Provider.of<MoviesProvider>(context, listen: false);

    return FutureBuilder(
        future: moviesProvider.getMovieCast(movieId),
        builder: (_, AsyncSnapshot<List<Cast>> snapshot) {
          if (snapshot.hasData) {
            final List<Cast> cast = snapshot.data;
            final data = snapshot.data;
            if (data.isNotEmpty) {
              return Container(
                margin: const EdgeInsets.only(bottom: 30),
                width: double.infinity,
                height: 180,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: data.length,
                    itemBuilder: (_, int index) => _CastCard(cast[index])),
              );
            } else {
              return const Center(
                  child: Text('No hay descripcion ni Actores para Mostrar'));
            }
          } else {
            return Container(
              margin: const EdgeInsets.only(bottom: 30),
              width: double.infinity,
              height: 180,
              child: const CupertinoActivityIndicator(),
            );
          }
        });
  }
}

class _CastCard extends StatelessWidget {
  final Cast actor;

  const _CastCard(this.actor);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: 110,
      height: 110,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: FadeInImage(
              placeholder: AssetImage('assets/no-image.jpg'),
              image: NetworkImage(actor.fullProfilePath),
              height: 140,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            actor.name,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
