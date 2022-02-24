class Serie {
  String? title;
  String? urlImage;
  String? description;
  int? voteAverage;
  bool? video;

  Serie({
    this.title,
    this.urlImage,
    this.description,
    this.voteAverage,
    this.video,
  });

  static Serie fromJson(Map<String, dynamic> json){
    Serie serieModel = Serie();
    serieModel.title = json["original_title"];
    serieModel.urlImage = json["poster_path"];
    serieModel.description = json["overview"];
    serieModel.voteAverage = json["vote_average"];
    serieModel.video = json["video"];
    return serieModel;
  }
}