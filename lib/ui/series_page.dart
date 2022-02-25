import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_app/domain/models/serie.dart';
import 'package:netflix_app/ui/commons/constants/constants.dart';
import 'package:netflix_app/ui/series_bloc/series_bloc.dart';

class SeriesPage extends StatefulWidget {
  SeriesPage({Key? key}) : super(key: key);

  @override
  State<SeriesPage> createState() => _SeriesPageState();
}

class _SeriesPageState extends State<SeriesPage> {
  @override
  Widget build(BuildContext context) {
    final serieBloc = BlocProvider.of<SeriesBloc>(context, listen: false);
    return Scaffold(
           
      backgroundColor: Constants.primaryColor,
      body: BlocBuilder<SeriesBloc, SerieState>(builder: (_, state) {
        return state.existSerieState ? listViewSeries(serieBloc) : Container();
      }),
    );
  }

  Widget listViewSeries(SeriesBloc serieBloc) {
    Serie newSerie = Serie();
    bool changeFavorite = true;
    return GestureDetector(
          onTap: () {
            serieBloc.add(FavoriteSerie(newSerie));
    
            serieBloc.add(ChangeIsFavorite(changeFavorite));
          },
          child: Container(
            color: Colors.white,
          ),
    );
  }

  Widget loading() {
    return Container(
      color: Colors.yellow,
    );
  }
}
