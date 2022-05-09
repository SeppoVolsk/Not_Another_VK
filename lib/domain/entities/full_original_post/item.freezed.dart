// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Item _$ItemFromJson(Map<String, dynamic> json) {
  return _Item.fromJson(json);
}

/// @nodoc
mixin _$Item {
  int? get id => throw _privateConstructorUsedError;
  int? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'owner_id')
  int? get ownerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'from_id')
  int? get fromId => throw _privateConstructorUsedError;
  @JsonKey(name: 'post_id')
  int? get postId => throw _privateConstructorUsedError;
  @JsonKey(name: 'parents_stack')
  List<dynamic>? get parentsStack => throw _privateConstructorUsedError;
  @JsonKey(name: 'post_type')
  String? get postType => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  @JsonKey(name: 'marked_as_ads')
  int? get markedAsAds => throw _privateConstructorUsedError;
  @JsonKey(name: 'post_source')
  PostSource? get postSource => throw _privateConstructorUsedError;
  Comments? get comments => throw _privateConstructorUsedError;
  Likes? get likes => throw _privateConstructorUsedError;
  Reposts? get reposts => throw _privateConstructorUsedError;
  Donut? get donut => throw _privateConstructorUsedError;
  @JsonKey(name: 'short_text_rate')
  double? get shortTextRate => throw _privateConstructorUsedError;
  @JsonKey(name: 'zoom_text')
  bool? get zoomText => throw _privateConstructorUsedError;
  List<Attachment>? get attachments => throw _privateConstructorUsedError;
  @JsonKey(name: 'carousel_offset')
  int? get carouselOffset => throw _privateConstructorUsedError;
  Views? get views => throw _privateConstructorUsedError;
  @JsonKey(name: 'copy_history')
  List<CopyHistory>? get copyHistory => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemCopyWith<Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      int? date,
      @JsonKey(name: 'owner_id') int? ownerId,
      @JsonKey(name: 'from_id') int? fromId,
      @JsonKey(name: 'post_id') int? postId,
      @JsonKey(name: 'parents_stack') List<dynamic>? parentsStack,
      @JsonKey(name: 'post_type') String? postType,
      String? text,
      @JsonKey(name: 'marked_as_ads') int? markedAsAds,
      @JsonKey(name: 'post_source') PostSource? postSource,
      Comments? comments,
      Likes? likes,
      Reposts? reposts,
      Donut? donut,
      @JsonKey(name: 'short_text_rate') double? shortTextRate,
      @JsonKey(name: 'zoom_text') bool? zoomText,
      List<Attachment>? attachments,
      @JsonKey(name: 'carousel_offset') int? carouselOffset,
      Views? views,
      @JsonKey(name: 'copy_history') List<CopyHistory>? copyHistory});

  $PostSourceCopyWith<$Res>? get postSource;
  $CommentsCopyWith<$Res>? get comments;
  $LikesCopyWith<$Res>? get likes;
  $RepostsCopyWith<$Res>? get reposts;
  $DonutCopyWith<$Res>? get donut;
  $ViewsCopyWith<$Res>? get views;
}

/// @nodoc
class _$ItemCopyWithImpl<$Res> implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  final Item _value;
  // ignore: unused_field
  final $Res Function(Item) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? ownerId = freezed,
    Object? fromId = freezed,
    Object? postId = freezed,
    Object? parentsStack = freezed,
    Object? postType = freezed,
    Object? text = freezed,
    Object? markedAsAds = freezed,
    Object? postSource = freezed,
    Object? comments = freezed,
    Object? likes = freezed,
    Object? reposts = freezed,
    Object? donut = freezed,
    Object? shortTextRate = freezed,
    Object? zoomText = freezed,
    Object? attachments = freezed,
    Object? carouselOffset = freezed,
    Object? views = freezed,
    Object? copyHistory = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int?,
      ownerId: ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int?,
      fromId: fromId == freezed
          ? _value.fromId
          : fromId // ignore: cast_nullable_to_non_nullable
              as int?,
      postId: postId == freezed
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int?,
      parentsStack: parentsStack == freezed
          ? _value.parentsStack
          : parentsStack // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      postType: postType == freezed
          ? _value.postType
          : postType // ignore: cast_nullable_to_non_nullable
              as String?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      markedAsAds: markedAsAds == freezed
          ? _value.markedAsAds
          : markedAsAds // ignore: cast_nullable_to_non_nullable
              as int?,
      postSource: postSource == freezed
          ? _value.postSource
          : postSource // ignore: cast_nullable_to_non_nullable
              as PostSource?,
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as Comments?,
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as Likes?,
      reposts: reposts == freezed
          ? _value.reposts
          : reposts // ignore: cast_nullable_to_non_nullable
              as Reposts?,
      donut: donut == freezed
          ? _value.donut
          : donut // ignore: cast_nullable_to_non_nullable
              as Donut?,
      shortTextRate: shortTextRate == freezed
          ? _value.shortTextRate
          : shortTextRate // ignore: cast_nullable_to_non_nullable
              as double?,
      zoomText: zoomText == freezed
          ? _value.zoomText
          : zoomText // ignore: cast_nullable_to_non_nullable
              as bool?,
      attachments: attachments == freezed
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<Attachment>?,
      carouselOffset: carouselOffset == freezed
          ? _value.carouselOffset
          : carouselOffset // ignore: cast_nullable_to_non_nullable
              as int?,
      views: views == freezed
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as Views?,
      copyHistory: copyHistory == freezed
          ? _value.copyHistory
          : copyHistory // ignore: cast_nullable_to_non_nullable
              as List<CopyHistory>?,
    ));
  }

  @override
  $PostSourceCopyWith<$Res>? get postSource {
    if (_value.postSource == null) {
      return null;
    }

    return $PostSourceCopyWith<$Res>(_value.postSource!, (value) {
      return _then(_value.copyWith(postSource: value));
    });
  }

  @override
  $CommentsCopyWith<$Res>? get comments {
    if (_value.comments == null) {
      return null;
    }

    return $CommentsCopyWith<$Res>(_value.comments!, (value) {
      return _then(_value.copyWith(comments: value));
    });
  }

  @override
  $LikesCopyWith<$Res>? get likes {
    if (_value.likes == null) {
      return null;
    }

    return $LikesCopyWith<$Res>(_value.likes!, (value) {
      return _then(_value.copyWith(likes: value));
    });
  }

  @override
  $RepostsCopyWith<$Res>? get reposts {
    if (_value.reposts == null) {
      return null;
    }

    return $RepostsCopyWith<$Res>(_value.reposts!, (value) {
      return _then(_value.copyWith(reposts: value));
    });
  }

  @override
  $DonutCopyWith<$Res>? get donut {
    if (_value.donut == null) {
      return null;
    }

    return $DonutCopyWith<$Res>(_value.donut!, (value) {
      return _then(_value.copyWith(donut: value));
    });
  }

  @override
  $ViewsCopyWith<$Res>? get views {
    if (_value.views == null) {
      return null;
    }

    return $ViewsCopyWith<$Res>(_value.views!, (value) {
      return _then(_value.copyWith(views: value));
    });
  }
}

/// @nodoc
abstract class _$$_ItemCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$$_ItemCopyWith(_$_Item value, $Res Function(_$_Item) then) =
      __$$_ItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      int? date,
      @JsonKey(name: 'owner_id') int? ownerId,
      @JsonKey(name: 'from_id') int? fromId,
      @JsonKey(name: 'post_id') int? postId,
      @JsonKey(name: 'parents_stack') List<dynamic>? parentsStack,
      @JsonKey(name: 'post_type') String? postType,
      String? text,
      @JsonKey(name: 'marked_as_ads') int? markedAsAds,
      @JsonKey(name: 'post_source') PostSource? postSource,
      Comments? comments,
      Likes? likes,
      Reposts? reposts,
      Donut? donut,
      @JsonKey(name: 'short_text_rate') double? shortTextRate,
      @JsonKey(name: 'zoom_text') bool? zoomText,
      List<Attachment>? attachments,
      @JsonKey(name: 'carousel_offset') int? carouselOffset,
      Views? views,
      @JsonKey(name: 'copy_history') List<CopyHistory>? copyHistory});

  @override
  $PostSourceCopyWith<$Res>? get postSource;
  @override
  $CommentsCopyWith<$Res>? get comments;
  @override
  $LikesCopyWith<$Res>? get likes;
  @override
  $RepostsCopyWith<$Res>? get reposts;
  @override
  $DonutCopyWith<$Res>? get donut;
  @override
  $ViewsCopyWith<$Res>? get views;
}

/// @nodoc
class __$$_ItemCopyWithImpl<$Res> extends _$ItemCopyWithImpl<$Res>
    implements _$$_ItemCopyWith<$Res> {
  __$$_ItemCopyWithImpl(_$_Item _value, $Res Function(_$_Item) _then)
      : super(_value, (v) => _then(v as _$_Item));

  @override
  _$_Item get _value => super._value as _$_Item;

  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? ownerId = freezed,
    Object? fromId = freezed,
    Object? postId = freezed,
    Object? parentsStack = freezed,
    Object? postType = freezed,
    Object? text = freezed,
    Object? markedAsAds = freezed,
    Object? postSource = freezed,
    Object? comments = freezed,
    Object? likes = freezed,
    Object? reposts = freezed,
    Object? donut = freezed,
    Object? shortTextRate = freezed,
    Object? zoomText = freezed,
    Object? attachments = freezed,
    Object? carouselOffset = freezed,
    Object? views = freezed,
    Object? copyHistory = freezed,
  }) {
    return _then(_$_Item(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int?,
      ownerId: ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int?,
      fromId: fromId == freezed
          ? _value.fromId
          : fromId // ignore: cast_nullable_to_non_nullable
              as int?,
      postId: postId == freezed
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int?,
      parentsStack: parentsStack == freezed
          ? _value._parentsStack
          : parentsStack // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      postType: postType == freezed
          ? _value.postType
          : postType // ignore: cast_nullable_to_non_nullable
              as String?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      markedAsAds: markedAsAds == freezed
          ? _value.markedAsAds
          : markedAsAds // ignore: cast_nullable_to_non_nullable
              as int?,
      postSource: postSource == freezed
          ? _value.postSource
          : postSource // ignore: cast_nullable_to_non_nullable
              as PostSource?,
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as Comments?,
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as Likes?,
      reposts: reposts == freezed
          ? _value.reposts
          : reposts // ignore: cast_nullable_to_non_nullable
              as Reposts?,
      donut: donut == freezed
          ? _value.donut
          : donut // ignore: cast_nullable_to_non_nullable
              as Donut?,
      shortTextRate: shortTextRate == freezed
          ? _value.shortTextRate
          : shortTextRate // ignore: cast_nullable_to_non_nullable
              as double?,
      zoomText: zoomText == freezed
          ? _value.zoomText
          : zoomText // ignore: cast_nullable_to_non_nullable
              as bool?,
      attachments: attachments == freezed
          ? _value._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<Attachment>?,
      carouselOffset: carouselOffset == freezed
          ? _value.carouselOffset
          : carouselOffset // ignore: cast_nullable_to_non_nullable
              as int?,
      views: views == freezed
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as Views?,
      copyHistory: copyHistory == freezed
          ? _value._copyHistory
          : copyHistory // ignore: cast_nullable_to_non_nullable
              as List<CopyHistory>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Item implements _Item {
  _$_Item(
      {this.id,
      this.date,
      @JsonKey(name: 'owner_id') this.ownerId,
      @JsonKey(name: 'from_id') this.fromId,
      @JsonKey(name: 'post_id') this.postId,
      @JsonKey(name: 'parents_stack') final List<dynamic>? parentsStack,
      @JsonKey(name: 'post_type') this.postType,
      this.text,
      @JsonKey(name: 'marked_as_ads') this.markedAsAds,
      @JsonKey(name: 'post_source') this.postSource,
      this.comments,
      this.likes,
      this.reposts,
      this.donut,
      @JsonKey(name: 'short_text_rate') this.shortTextRate,
      @JsonKey(name: 'zoom_text') this.zoomText,
      final List<Attachment>? attachments,
      @JsonKey(name: 'carousel_offset') this.carouselOffset,
      this.views,
      @JsonKey(name: 'copy_history') final List<CopyHistory>? copyHistory})
      : _parentsStack = parentsStack,
        _attachments = attachments,
        _copyHistory = copyHistory;

  factory _$_Item.fromJson(Map<String, dynamic> json) => _$$_ItemFromJson(json);

  @override
  final int? id;
  @override
  final int? date;
  @override
  @JsonKey(name: 'owner_id')
  final int? ownerId;
  @override
  @JsonKey(name: 'from_id')
  final int? fromId;
  @override
  @JsonKey(name: 'post_id')
  final int? postId;
  final List<dynamic>? _parentsStack;
  @override
  @JsonKey(name: 'parents_stack')
  List<dynamic>? get parentsStack {
    final value = _parentsStack;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'post_type')
  final String? postType;
  @override
  final String? text;
  @override
  @JsonKey(name: 'marked_as_ads')
  final int? markedAsAds;
  @override
  @JsonKey(name: 'post_source')
  final PostSource? postSource;
  @override
  final Comments? comments;
  @override
  final Likes? likes;
  @override
  final Reposts? reposts;
  @override
  final Donut? donut;
  @override
  @JsonKey(name: 'short_text_rate')
  final double? shortTextRate;
  @override
  @JsonKey(name: 'zoom_text')
  final bool? zoomText;
  final List<Attachment>? _attachments;
  @override
  List<Attachment>? get attachments {
    final value = _attachments;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'carousel_offset')
  final int? carouselOffset;
  @override
  final Views? views;
  final List<CopyHistory>? _copyHistory;
  @override
  @JsonKey(name: 'copy_history')
  List<CopyHistory>? get copyHistory {
    final value = _copyHistory;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Item(id: $id, date: $date, ownerId: $ownerId, fromId: $fromId, postId: $postId, parentsStack: $parentsStack, postType: $postType, text: $text, markedAsAds: $markedAsAds, postSource: $postSource, comments: $comments, likes: $likes, reposts: $reposts, donut: $donut, shortTextRate: $shortTextRate, zoomText: $zoomText, attachments: $attachments, carouselOffset: $carouselOffset, views: $views, copyHistory: $copyHistory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Item &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.ownerId, ownerId) &&
            const DeepCollectionEquality().equals(other.fromId, fromId) &&
            const DeepCollectionEquality().equals(other.postId, postId) &&
            const DeepCollectionEquality()
                .equals(other._parentsStack, _parentsStack) &&
            const DeepCollectionEquality().equals(other.postType, postType) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality()
                .equals(other.markedAsAds, markedAsAds) &&
            const DeepCollectionEquality()
                .equals(other.postSource, postSource) &&
            const DeepCollectionEquality().equals(other.comments, comments) &&
            const DeepCollectionEquality().equals(other.likes, likes) &&
            const DeepCollectionEquality().equals(other.reposts, reposts) &&
            const DeepCollectionEquality().equals(other.donut, donut) &&
            const DeepCollectionEquality()
                .equals(other.shortTextRate, shortTextRate) &&
            const DeepCollectionEquality().equals(other.zoomText, zoomText) &&
            const DeepCollectionEquality()
                .equals(other._attachments, _attachments) &&
            const DeepCollectionEquality()
                .equals(other.carouselOffset, carouselOffset) &&
            const DeepCollectionEquality().equals(other.views, views) &&
            const DeepCollectionEquality()
                .equals(other._copyHistory, _copyHistory));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(date),
        const DeepCollectionEquality().hash(ownerId),
        const DeepCollectionEquality().hash(fromId),
        const DeepCollectionEquality().hash(postId),
        const DeepCollectionEquality().hash(_parentsStack),
        const DeepCollectionEquality().hash(postType),
        const DeepCollectionEquality().hash(text),
        const DeepCollectionEquality().hash(markedAsAds),
        const DeepCollectionEquality().hash(postSource),
        const DeepCollectionEquality().hash(comments),
        const DeepCollectionEquality().hash(likes),
        const DeepCollectionEquality().hash(reposts),
        const DeepCollectionEquality().hash(donut),
        const DeepCollectionEquality().hash(shortTextRate),
        const DeepCollectionEquality().hash(zoomText),
        const DeepCollectionEquality().hash(_attachments),
        const DeepCollectionEquality().hash(carouselOffset),
        const DeepCollectionEquality().hash(views),
        const DeepCollectionEquality().hash(_copyHistory)
      ]);

  @JsonKey(ignore: true)
  @override
  _$$_ItemCopyWith<_$_Item> get copyWith =>
      __$$_ItemCopyWithImpl<_$_Item>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemToJson(this);
  }
}

abstract class _Item implements Item {
  factory _Item(
      {final int? id,
      final int? date,
      @JsonKey(name: 'owner_id')
          final int? ownerId,
      @JsonKey(name: 'from_id')
          final int? fromId,
      @JsonKey(name: 'post_id')
          final int? postId,
      @JsonKey(name: 'parents_stack')
          final List<dynamic>? parentsStack,
      @JsonKey(name: 'post_type')
          final String? postType,
      final String? text,
      @JsonKey(name: 'marked_as_ads')
          final int? markedAsAds,
      @JsonKey(name: 'post_source')
          final PostSource? postSource,
      final Comments? comments,
      final Likes? likes,
      final Reposts? reposts,
      final Donut? donut,
      @JsonKey(name: 'short_text_rate')
          final double? shortTextRate,
      @JsonKey(name: 'zoom_text')
          final bool? zoomText,
      final List<Attachment>? attachments,
      @JsonKey(name: 'carousel_offset')
          final int? carouselOffset,
      final Views? views,
      @JsonKey(name: 'copy_history')
          final List<CopyHistory>? copyHistory}) = _$_Item;

  factory _Item.fromJson(Map<String, dynamic> json) = _$_Item.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  int? get date => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'owner_id')
  int? get ownerId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'from_id')
  int? get fromId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'post_id')
  int? get postId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'parents_stack')
  List<dynamic>? get parentsStack => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'post_type')
  String? get postType => throw _privateConstructorUsedError;
  @override
  String? get text => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'marked_as_ads')
  int? get markedAsAds => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'post_source')
  PostSource? get postSource => throw _privateConstructorUsedError;
  @override
  Comments? get comments => throw _privateConstructorUsedError;
  @override
  Likes? get likes => throw _privateConstructorUsedError;
  @override
  Reposts? get reposts => throw _privateConstructorUsedError;
  @override
  Donut? get donut => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'short_text_rate')
  double? get shortTextRate => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'zoom_text')
  bool? get zoomText => throw _privateConstructorUsedError;
  @override
  List<Attachment>? get attachments => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'carousel_offset')
  int? get carouselOffset => throw _privateConstructorUsedError;
  @override
  Views? get views => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'copy_history')
  List<CopyHistory>? get copyHistory => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ItemCopyWith<_$_Item> get copyWith => throw _privateConstructorUsedError;
}
