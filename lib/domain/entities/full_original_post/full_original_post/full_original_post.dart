import 'response.dart';

class FullOriginalPost {
  Response? response;

  FullOriginalPost({this.response});

  factory FullOriginalPost.fromJson(Map<String, dynamic> json) {
    return FullOriginalPost(
      response: json['response'] == null
          ? null
          : Response.fromJson(json['response'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() => {
        'response': response?.toJson(),
      };
}
