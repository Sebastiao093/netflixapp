class Serie {
  String? title;
  String? urlImage;
  String? description;
  int? voteAverage;
  bool? video;
  bool? isFavorite;

  Serie(
      {this.title,
      this.urlImage,
      this.description,
      this.voteAverage,
      this.video,
      this.isFavorite});

  Serie copyWith({
    String? title,
    String? urlImage,
    String? description,
    int? voteAverage,
    bool? video,
    bool? isFavorite,
  }) =>
      Serie(
          title: title ?? this.title,
          urlImage: urlImage ?? this.urlImage,
          description: description ?? this.description,
          voteAverage: voteAverage ?? this.voteAverage,
          video: video ?? this.video,
          isFavorite: isFavorite ?? this.isFavorite);

  static Serie fromJson(Map<String, dynamic> json) {
    Serie serieModel = Serie();
    serieModel.title = json["original_title"];
    serieModel.urlImage = json["poster_path"];
    serieModel.description = json["overview"];
    serieModel.voteAverage = json["vote_average"];
    serieModel.video = json["video"];
    return serieModel;
  }
}
