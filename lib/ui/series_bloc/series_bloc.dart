import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/domain/models/serie.dart';

part 'series_event.dart';
part 'series_state.dart';


class SeriesBloc extends Bloc<SerieEvent, SerieState>{

  SeriesBloc() : super( const SerieInitialState());
}