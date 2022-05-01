import 'package:vk_postman/domain/api_clients/response_posts/group.dart';
import 'package:vk_postman/domain/api_clients/response_posts/profile.dart';
import 'package:vk_postman/domain/api_clients/response_posts/response_posts.dart';
import 'api_clients/response_posts/item.dart';

class ShowOnScreen {
  ResponsePosts? allPosts;
  List<int?> id = [];
  List<String?> firstName = [];
  List<String?> surName = [];
  List<String?> postText = [];
  String? avatarPhoto;
  List<String>? postPhoto;

  ShowOnScreen(this.allPosts) {
    List<Item> items = allPosts!.response!.items!;
    List<Profile> profiles = allPosts!.response!.profiles!;
    List<Group> gropups = allPosts!.response!.groups!;

    id = List.generate(items.length, (index) => items[index].fromId);
    postText = List.generate(items.length, (index) => items[index].text);
    // id.forEach((element) {
    // profiles.where((e) => e.id == element);
    // })
  }
}
