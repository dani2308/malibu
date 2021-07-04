class Post {
  String id;
  String comment;
  String description;
  String image;
  int likes;

  Post({this.id, this.comment, this.description, this.image, this.likes});

  Post.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    comment = json['comment'];
    description = json['description'];
    image = json['image'];
    likes = json['likes'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['id'] = this.id;
    data['comment'] = this.comment;
    data['description'] = this.description;
    data['image'] = this.image;
    data['likes'] = this.likes;

    return data;
  }
}
