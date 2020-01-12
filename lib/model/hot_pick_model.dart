class HotPickModel {
  String title;
  String subtitle;
  int rating;
  String imgUrl;

  HotPickModel({
    this.title,
    this.subtitle,
    this.rating,
    this.imgUrl,
  });

  HotPickModel.fromJson(Map<String, dynamic> json) {
    HotPickModel(
      title: json['title'],
      subtitle: json['subtitle'],
      rating: json['rating'],
      imgUrl: json['imgUrl'],
    );
  }
}
