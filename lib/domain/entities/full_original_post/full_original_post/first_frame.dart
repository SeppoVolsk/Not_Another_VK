class FirstFrame {
  String? url;
  int? width;
  int? height;

  FirstFrame({this.url, this.width, this.height});

  factory FirstFrame.fromJson(Map<String, dynamic> json) => FirstFrame(
        url: json['url'] as String?,
        width: json['width'] as int?,
        height: json['height'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'url': url,
        'width': width,
        'height': height,
      };
}
