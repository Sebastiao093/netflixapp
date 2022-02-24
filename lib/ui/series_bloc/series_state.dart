part of 'series_bloc.dart';

@immutable
abstract class SerieState {
  final bool existState;
  final Serie? serie;

  const SerieState({
    this.existState = false,
    this.serie
  });
}

class SerieInitialState extends SerieState{
  const SerieInitialState(): super(existState: false, serie: null);

}