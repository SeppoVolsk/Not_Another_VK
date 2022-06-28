import 'package:vk_postman/domain/entities/full_original_post/full_original_post.dart';
import 'package:vk_postman/domain/entities/full_original_post/image.dart';
import 'dart:math';
import 'package:vk_postman/domain/entities/full_original_post/size.dart';

class Post {
  int? userId;
  String? dateTime, firstName, surName, userPhoto, postText;
  List<String?>? postPhoto, postLargePhoto;

  Post(
      {this.userId,
      this.dateTime,
      this.firstName,
      this.surName,
      this.userPhoto,
      this.postText,
      this.postPhoto,
      this.postLargePhoto});

  Stream<Post> from<T>(T source) async* {
    final _itemsList = T == (Map<String, dynamic>)
        ? (source as Map)['response']['items']
        : (source as FullOriginalPost).response?.items;
    for (var e in _itemsList) {
      final textFields = fillTextFields(e, source),
          mediaFields = fillMediaFields(e);
      yield Post(
          userId: textFields['userId'],
          firstName: textFields['firstName'],
          surName: textFields['surName'],
          dateTime: textFields['dateTime'],
          postText: textFields['postText'],
          userPhoto: textFields['userPhoto'],
          postPhoto: mediaFields['postPhoto'],
          postLargePhoto: mediaFields['postLargePhoto']);
    }
  }
}

extension on Post {
  String largeVkPhoto(List<dynamic> sizesList) {
    bool isSize = sizesList.first is Size || sizesList.first is Image;
    List<int> photoHeights = [];
    for (var element in sizesList) {
      photoHeights.add(isSize ? element.height : element['height']);
    }
    final maxPhotoHeight = photoHeights.reduce(max);
    final result = sizesList.firstWhere((element) => isSize
        ? element.height == maxPhotoHeight
        : element['height'] == maxPhotoHeight);
    return isSize ? result.url : result['url'];
  }

  String visibleVkDate(int unixDate) {
    DateTime? _dateTime = DateTime.fromMillisecondsSinceEpoch(unixDate * 1000);
    return _dateTime.toString().substring(0, 19);
  }

  Map<String, dynamic> fillTextFields(dynamic e, dynamic source) {
    bool itsJson = source is Map;
    final int _userId = itsJson ? e['from_id'] : e.fromId;
    final String _postText = itsJson ? e['text'] : e.text;
    final String _dateTime = visibleVkDate(itsJson ? e['date'] : e.date);
    String? _firstName, _surName, _userPhoto;
    List<dynamic> _profilesList =
        itsJson ? source['response']['profiles'] : source.response.profiles;
    List<dynamic> _groupsList =
        itsJson ? source['response']['groups'] : source.response.groups;
    bool itsGroup = _userId < 0 ? true : false;
    for (var p in itsGroup ? _groupsList : _profilesList) {
      if (itsJson && p['id'] == _userId.abs()) {
        _firstName = itsGroup ? p['name'] : p['first_name'];
        _surName = itsGroup ? p['screen_name'] : p['last_name'];
        _userPhoto = p['photo_50'];
      } else if (!itsJson && p.id == _userId.abs()) {
        _firstName = itsGroup ? p.name : p.firstName;
        _surName = itsGroup ? p.screenName : p.lastName;
        _userPhoto = p.photo50;
      }
    }
    return {
      'userId': _userId,
      'firstName': _firstName,
      'surName': _surName,
      'dateTime': _dateTime,
      'postText': _postText,
      'userPhoto': _userPhoto
    };
  }

  Map<String, List<String?>> fillMediaFields(dynamic e) {
    bool itsJson = e is Map;
    final List<String?> _postLargePhoto = [], _postPhoto = [];
    bool _postContainsMedia =
        itsJson ? e.containsKey('attachments') : e.attachments != null;
    if (_postContainsMedia) {
      for (var a in itsJson ? e['attachments'] : e.attachments) {
        String type = itsJson ? a['type'] : a.type;
        _postPhoto.add(type == 'video'
            ? itsJson
                ? a['video']['image'][0]['url']
                : a.video.image[0].url
            : type == 'photo'
                ? itsJson
                    ? a['photo']['sizes'][0]['url']
                    : a.photo.sizes[0].url
                : null);
        _postLargePhoto.add(type == 'video'
            ? largeVkPhoto(itsJson ? a['video']['image'] : a.video.image)
            : type == 'photo'
                ? largeVkPhoto(itsJson ? a['photo']['sizes'] : a.photo.sizes)
                : null);
      }
    } else {
      _postPhoto.add(null);
      _postLargePhoto.add(null);
    }
    return {'postPhoto': _postPhoto, 'postLargePhoto': _postLargePhoto};
  }
}
