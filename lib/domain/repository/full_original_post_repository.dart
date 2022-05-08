import 'package:vk_postman/domain/entities/full_original_post/full_original_post/response.dart';

class FullOriginalPostRepository {
  Response getFullPost(Map<String, dynamic> json) {
    return Response.fromJson(json);
  }
}
