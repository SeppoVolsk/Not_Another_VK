import 'package:flutter/foundation.dart';
import 'package:vk_postman/domain/entities/full_original_post/full_original_post.dart';
import 'dart:math';
import 'package:vk_postman/domain/entities/full_original_post/size.dart';

class Post {
  int? userId;
  String? dateTime;
  String? firstName;
  String? surName;
  String? userPhoto;
  String? postText;
  List<String?>? postPhoto;
  List<String?>? postLargePhoto;

  Post(
      {this.userId,
      this.dateTime,
      this.firstName,
      this.surName,
      this.userPhoto,
      this.postText,
      this.postPhoto,
      this.postLargePhoto});

  static Stream<Post> from<T>(T source) async* {
    String? _firstName;
    String? _surName;
    String? _userPhoto;
    List<String?> _postPhoto = [];
    List<String?> _postLargePhoto = [];
    List<dynamic> _profilesList = (source as Map)['response']['profiles'];
    List<dynamic> _groupsList = source['response']['groups'];
    List<dynamic> _itemsList = source['response']['items'];
    int _userId; // = _itemsList[index]['from_id'];
    DateTime? _dateTime; // = DateTime.fromMillisecondsSinceEpoch(
    //itemsList[index]['date'] * 1000);
    String? _postText; // = _itemsList[index]['text'];
    List<dynamic> _attachmentsList;
    bool _postContainsMedia;

    for (var e in _itemsList) {
      _userId = e['from_id'];
      print(_userId);
      _postText = e['text'];
      _dateTime = DateTime.fromMillisecondsSinceEpoch(e['date'] * 1000);
      if (_userId > 0) {
        for (var p in _profilesList) {
          if (p['id'] == _userId) {
            _firstName = p['first_name'];
            _surName = p['last_name'];
            _userPhoto = p['photo_50'];
          }
        }
      } else {
        for (var p in _groupsList) {
          if (p['id'] == _userId.abs()) {
            _firstName = p['name'];
            _surName = p['screen_name'];
            _userPhoto = p['photo_50'];
          }
        }
      }
      //await Future.delayed(const Duration(seconds: 1));
      yield Post(
          userId: _userId,
          firstName: _firstName,
          surName: _surName,
          postText: _postText,
          userPhoto: _userPhoto);
    }
  }

  factory Post.postFromJson(dynamic json, int index) {
    String? _firstName;
    String? _surName;
    String? _userPhoto;
    List<String?> _postPhoto = [];
    List<String?> _postLargePhoto = [];
    List<dynamic> _profilesList = json['response']['profiles'];
    List<dynamic> _groupsList = json['response']['groups'];
    List<dynamic> _itemsList = json['response']['items'];
    int _userId = _itemsList[index]['from_id'];
    DateTime? _dateTime =
        DateTime.fromMillisecondsSinceEpoch(_itemsList[index]['date'] * 1000);
    String _postText = _itemsList[index]['text'];
    List<dynamic> _attachmentsList;

    bool _postContainsMedia;

    if (_userId > 0) {
      for (int indexProfile = 0;
          indexProfile < _profilesList.length;
          indexProfile++) {
        if (_profilesList[indexProfile]['id'] == _userId) {
          _firstName = _profilesList[indexProfile]['first_name'];
          _surName = _profilesList[indexProfile]['last_name'];
          _userPhoto = _profilesList[indexProfile]['photo_50'];
          break;
        }
      }
    } else {
      for (int indexGroup = 0; indexGroup < _groupsList.length; indexGroup++) {
        if (_groupsList[indexGroup]['id'] == _userId.abs()) {
          _firstName = _groupsList[indexGroup]['name'];
          _surName = _groupsList[indexGroup]['screen_name'];
          _userPhoto = _groupsList[indexGroup]['photo_50'];
          break;
        }
      }
    }
    _postContainsMedia = _itemsList[index].containsKey('attachments');
    if (_postContainsMedia) {
      _attachmentsList = _itemsList[index]['attachments'];
      for (int attIndex = 0; attIndex < _attachmentsList.length; attIndex++) {
        switch (_attachmentsList[attIndex]['type']) {
          case 'video':
            {
              _postPhoto
                  .add(_attachmentsList[attIndex]['video']['image'][0]['url']);
              _postLargePhoto.add(PostMethods.largeVkPhoto(
                  _attachmentsList[attIndex]['video']['image']));
            }
            break;
          case 'photo':
            {
              _postPhoto
                  .add(_attachmentsList[attIndex]['photo']['sizes'][0]['url']);
              _postLargePhoto.add(PostMethods.largeVkPhoto(
                  _attachmentsList[attIndex]['photo']['sizes']));
            }
            break;
          case 'link':
            {
              _postPhoto.add(null);
              _postLargePhoto.add(null);
            }
            break;
          case 'audio':
            {
              _postPhoto.add(null);
              _postLargePhoto.add(null);
            }
            break;
          default:
            {
              _postPhoto.add(null);
              _postLargePhoto.add(null);
            }
            break;
        }
      }
    } else {
      _postPhoto.add(null);
      _postLargePhoto.add(null);
    }
    String _dateString = _dateTime.toString().substring(0, 19);

    return Post(
        userId: _userId,
        dateTime: _dateString,
        firstName: _firstName,
        surName: _surName,
        userPhoto: _userPhoto,
        postText: _postText,
        postPhoto: List.generate(_postPhoto.length, (ind) => _postPhoto[ind]),
        postLargePhoto: List.generate(
            _postLargePhoto.length, (ind) => _postLargePhoto[ind]));
  }

  factory Post.fromOriginaltoView(FullOriginalPost originalPost, int index) {
    String? _firstName;
    String? _surName;
    String? _userPhoto;
    List<String?> _postPhoto = [];
    List<String?> _postLargePhoto = [];
    dynamic _profilesList = originalPost.response?.profiles;
    dynamic _groupsList = originalPost.response?.groups;
    dynamic _itemsList = originalPost.response?.items;
    dynamic _attachmentsList;
    bool _postContainsMedia;

    int _userId = _itemsList[index].fromId;
    DateTime _dateTime =
        DateTime.fromMillisecondsSinceEpoch(_itemsList[index].date * 1000);
    String _postText = _itemsList[index].text;
    if (_itemsList.isEmpty) {
      return Post();
    }

    if (_userId > 0) {
      for (int indexProfile = 0;
          indexProfile < _profilesList.length;
          indexProfile++) {
        try {
          if (_profilesList[indexProfile].id == _userId) {
            _firstName = _profilesList[indexProfile].firstName;
            _surName = _profilesList[indexProfile].lastName;
            _userPhoto = _profilesList[indexProfile].photo50;
            break;
          }
        } catch (e) {
          print('Ошибка при заполнении id из profilesList $e');
          rethrow;
        }
      }
    } else {
      try {
        for (int indexGroup = 0;
            indexGroup < _groupsList.length;
            indexGroup++) {
          if (_groupsList[indexGroup].id == (_userId).abs()) {
            _firstName = _groupsList[indexGroup].name;
            _surName = _groupsList[indexGroup].screenName;
            _userPhoto = _groupsList[indexGroup].photo50;
            break;
          }
        }
      } catch (e) {
        print('Ошибка при заполнении id из groupList $e');
        rethrow;
      }
    }
    _postContainsMedia = _itemsList[index].attachments != null;
    if (_postContainsMedia) {
      _attachmentsList = _itemsList[index].attachments;
      try {
        for (int attIndex = 0; attIndex < _attachmentsList.length; attIndex++) {
          switch (_attachmentsList[attIndex].type) {
            case 'video':
              {
                _postPhoto.add(_attachmentsList[attIndex].video.image[0].url);
                _postLargePhoto.add(PostMethods.largeVkPhoto(
                    _attachmentsList[attIndex].video.image));
              }
              break;
            case 'photo':
              {
                _postPhoto.add(_attachmentsList[attIndex].photo.sizes[0].url);

                _postLargePhoto.add(PostMethods.largeVkPhoto(
                    _attachmentsList[attIndex].photo.sizes));
              }
              break;
            case 'link':
              {
                _postPhoto.add(null);
                _postLargePhoto.add(null);
              }
              break;
            case 'audio':
              {
                _postPhoto.add(null);
                _postLargePhoto.add(null);
              }
              break;
            default:
              {
                _postPhoto.add(null);
                _postLargePhoto.add(null);
              }
              break;
          }
        }
      } catch (e) {
        print('Ошибка заполнения photo/video $e');
      }
    } else {
      _postPhoto.add(null);
      _postLargePhoto.add(null);
    }
    String _dateString = _dateTime.toString().substring(0, 19);

    return Post(
        userId: _userId,
        dateTime: _dateString,
        firstName: _firstName,
        surName: _surName,
        userPhoto: _userPhoto,
        postText: _postText,
        postPhoto: List.generate(_postPhoto.length, (ind) => _postPhoto[ind]),
        postLargePhoto: List.generate(
            _postLargePhoto.length, (ind) => _postLargePhoto[ind]));
  }

  Post copyWith({
    int? userId,
    String? dateTime,
    String? firstName,
    String? surName,
    String? userPhoto,
    String? postText,
    List<String?>? postPhoto,
    List<String?>? postLargePhoto,
  }) {
    return Post(
      userId: userId ?? this.userId,
      dateTime: dateTime ?? this.dateTime,
      firstName: firstName ?? this.firstName,
      surName: surName ?? this.surName,
      userPhoto: userPhoto ?? this.userPhoto,
      postText: postText ?? this.postText,
      postPhoto: postPhoto ?? this.postPhoto,
      postLargePhoto: postLargePhoto ?? this.postLargePhoto,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Post &&
        other.userId == userId &&
        other.dateTime == dateTime &&
        other.firstName == firstName &&
        other.surName == surName &&
        other.userPhoto == userPhoto &&
        other.postText == postText &&
        listEquals(other.postPhoto, postPhoto) &&
        listEquals(other.postLargePhoto, postLargePhoto);
  }

  @override
  int get hashCode {
    return userId.hashCode ^
        dateTime.hashCode ^
        firstName.hashCode ^
        surName.hashCode ^
        userPhoto.hashCode ^
        postText.hashCode ^
        postPhoto.hashCode ^
        postLargePhoto.hashCode;
  }
}

class PostMethods {
  static String largeVkPhoto(List<dynamic> sizesList) {
    bool isSize = sizesList.first is Size;
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
}
