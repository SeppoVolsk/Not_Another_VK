import 'package:flutter/foundation.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_initializing_formals

class Post {
  int? userId;
  String? firstName;
  String? surName;
  String? userPhoto;
  String? postText;
  List<String?>? postPhoto;

  Post(
      {this.userId,
      this.firstName,
      this.surName,
      this.userPhoto,
      this.postText,
      this.postPhoto});

  factory Post.postFromJson(dynamic json, int index) {
    String? _firstName;
    String? _surName;
    String? _userPhoto;
    List<String?> _postPhoto = [];
    List<dynamic> _profilesList = json['response']['profiles'];
    List<dynamic> _groupsList = json['response']['groups'];
    List<dynamic> _itemsList = json['response']['items'];
    int _userId = _itemsList[index]['from_id'];
    String _postText = _itemsList[index]['text'];
    List<dynamic> _attachmentsList;

    bool _postContainsMedia;

    //for (int index = 0; index < newsCount; index++) {
    //_userId = _itemsList[index]['from_id'];
    //_postText = _itemsList[index]['text'];
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
        if (_groupsList[indexGroup]['id'] == (_userId).abs()) {
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
      //_postPhoto.clear();
      for (int attIndex = 0; attIndex < _attachmentsList.length; attIndex++) {
        switch (_attachmentsList[attIndex]['type']) {
          case 'video':
            {
              _postPhoto
                  .add(_attachmentsList[attIndex]['video']['image'][0]['url']);
            }
            break;
          case 'photo':
            {
              _postPhoto
                  .add(_attachmentsList[attIndex]['photo']['sizes'][0]['url']);
            }
            break;
          case 'link':
            {
              _postPhoto.add(null);
            }
            break;
          case 'audio':
            {
              _postPhoto.add(null);
            }
            break;
          default:
            {
              _postPhoto.add(null);
            }
            break;
        }
      }
    } else {
      //_postPhoto.clear();
      _postPhoto.add(null);
    }

    //}

    return Post(
        userId: _userId,
        firstName: _firstName,
        surName: _surName,
        userPhoto: _userPhoto,
        postText: _postText,
        postPhoto: List.generate(_postPhoto.length, (ind) => _postPhoto[ind]));
  }

  Post copyWith({
    int? userId,
    String? firstName,
    String? surName,
    String? userPhoto,
    String? postText,
    List<String?>? postPhoto,
  }) {
    return Post(
      userId: userId ?? this.userId,
      firstName: firstName ?? this.firstName,
      surName: surName ?? this.surName,
      userPhoto: userPhoto ?? this.userPhoto,
      postText: postText ?? this.postText,
      postPhoto: postPhoto ?? this.postPhoto,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Post &&
        other.userId == userId &&
        other.firstName == firstName &&
        other.surName == surName &&
        other.userPhoto == userPhoto &&
        other.postText == postText &&
        listEquals(other.postPhoto, postPhoto);
  }

  @override
  int get hashCode {
    return userId.hashCode ^
        firstName.hashCode ^
        surName.hashCode ^
        userPhoto.hashCode ^
        postText.hashCode ^
        postPhoto.hashCode;
  }
}
