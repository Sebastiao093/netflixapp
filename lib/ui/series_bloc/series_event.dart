part of 'series_bloc.dart';

@immutable
abstract class SerieEvent {}

class FavoriteSerie extends SerieEvent {
  final Serie serie;
  FavoriteSerie(this.serie);
}

class ChangeIsFavorite extends SerieEvent {
  final bool isFavorite;
  ChangeIsFavorite(this.isFavorite);
}
