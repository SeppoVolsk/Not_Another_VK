class Image {
  String? url;
  int? width;
  int? height;
  int? withPadding;

  Image({this.url, this.width, this.height, this.withPadding});

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        url: json['url'] as String?,
        width: json['width'] as int?,
        height: json['height'] as int?,
        withPadding: json['with_padding'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'url': url,
        'width': width,
        'height': height,
        'with_padding': withPadding,
      };
}
