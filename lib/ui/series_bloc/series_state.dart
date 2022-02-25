part of 'series_bloc.dart';

@immutable
abstract class SerieState {
  final bool existSerieState;
  final Serie? serie;

  const SerieState({this.existSerieState = false, this.serie});
}

class SerieInitialState extends SerieState {
  const SerieInitialState() : super(existSerieState: true, serie: null);
}

class SerieSetState extends SerieState {
  final Serie newSerie;

  const SerieSetState(this.newSerie): super(existSerieState: true, serie: newSerie);
}
