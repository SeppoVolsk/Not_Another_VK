// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'copy_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CopyHistory _$CopyHistoryFromJson(Map<String, dynamic> json) {
  return _CopyHistory.fromJson(json);
}

/// @nodoc
mixin _$CopyHistory {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'owner_id')
  int? get ownerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'from_id')
  int? get fromId => throw _privateConstructorUsedError;
  int? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'post_type')
  String? get postType => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  List<Attachment>? get attachments => throw _privateConstructorUsedError;
  @JsonKey(name: 'post_source')
  PostSource? get postSource => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CopyHistoryCopyWith<CopyHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CopyHistoryCopyWith<$Res> {
  factory $CopyHistoryCopyWith(
          CopyHistory value, $Res Function(CopyHistory) then) =
      _$CopyHistoryCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      @JsonKey(name: 'owner_id') int? ownerId,
      @JsonKey(name: 'from_id') int? fromId,
      int? date,
      @JsonKey(name: 'post_type') String? postType,
      String? text,
      List<Attachment>? attachments,
      @JsonKey(name: 'post_source') PostSource? postSource});

  $PostSourceCopyWith<$Res>? get postSource;
}

/// @nodoc
class _$CopyHistoryCopyWithImpl<$Res> implements $CopyHistoryCopyWith<$Res> {
  _$CopyHistoryCopyWithImpl(this._value, this._then);

  final CopyHistory _value;
  // ignore: unused_field
  final $Res Function(CopyHistory) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? ownerId = freezed,
    Object? fromId = freezed,
    Object? date = freezed,
    Object? postType = freezed,
    Object? text = freezed,
    Object? attachments = freezed,
    Object? postSource = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      ownerId: ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int?,
      fromId: fromId == freezed
          ? _value.fromId
          : fromId // ignore: cast_nullable_to_non_nullable
              as int?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int?,
      postType: postType == freezed
          ? _value.postType
          : postType // ignore: cast_nullable_to_non_nullable
              as String?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      attachments: attachments == freezed
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<Attachment>?,
      postSource: postSource == freezed
          ? _value.postSource
          : postSource // ignore: cast_nullable_to_non_nullable
              as PostSource?,
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
}

/// @nodoc
abstract class _$$_CopyHistoryCopyWith<$Res>
    implements $CopyHistoryCopyWith<$Res> {
  factory _$$_CopyHistoryCopyWith(
          _$_CopyHistory value, $Res Function(_$_CopyHistory) then) =
      __$$_CopyHistoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      @JsonKey(name: 'owner_id') int? ownerId,
      @JsonKey(name: 'from_id') int? fromId,
      int? date,
      @JsonKey(name: 'post_type') String? postType,
      String? text,
      List<Attachment>? attachments,
      @JsonKey(name: 'post_source') PostSource? postSource});

  @override
  $PostSourceCopyWith<$Res>? get postSource;
}

/// @nodoc
class __$$_CopyHistoryCopyWithImpl<$Res> extends _$CopyHistoryCopyWithImpl<$Res>
    implements _$$_CopyHistoryCopyWith<$Res> {
  __$$_CopyHistoryCopyWithImpl(
      _$_CopyHistory _value, $Res Function(_$_CopyHistory) _then)
      : super(_value, (v) => _then(v as _$_CopyHistory));

  @override
  _$_CopyHistory get _value => super._value as _$_CopyHistory;

  @override
  $Res call({
    Object? id = freezed,
    Object? ownerId = freezed,
    Object? fromId = freezed,
    Object? date = freezed,
    Object? postType = freezed,
    Object? text = freezed,
    Object? attachments = freezed,
    Object? postSource = freezed,
  }) {
    return _then(_$_CopyHistory(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      ownerId: ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int?,
      fromId: fromId == freezed
          ? _value.fromId
          : fromId // ignore: cast_nullable_to_non_nullable
              as int?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int?,
      postType: postType == freezed
          ? _value.postType
          : postType // ignore: cast_nullable_to_non_nullable
              as String?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      attachments: attachments == freezed
          ? _value._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<Attachment>?,
      postSource: postSource == freezed
          ? _value.postSource
          : postSource // ignore: cast_nullable_to_non_nullable
              as PostSource?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CopyHistory implements _CopyHistory {
  _$_CopyHistory(
      {this.id,
      @JsonKey(name: 'owner_id') this.ownerId,
      @JsonKey(name: 'from_id') this.fromId,
      this.date,
      @JsonKey(name: 'post_type') this.postType,
      this.text,
      final List<Attachment>? attachments,
      @JsonKey(name: 'post_source') this.postSource})
      : _attachments = attachments;

  factory _$_CopyHistory.fromJson(Map<String, dynamic> json) =>
      _$$_CopyHistoryFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'owner_id')
  final int? ownerId;
  @override
  @JsonKey(name: 'from_id')
  final int? fromId;
  @override
  final int? date;
  @override
  @JsonKey(name: 'post_type')
  final String? postType;
  @override
  final String? text;
  final List<Attachment>? _attachments;
  @override
  List<Attachment>? get attachments {
    final value = _attachments;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'post_source')
  final PostSource? postSource;

  @override
  String toString() {
    return 'CopyHistory(id: $id, ownerId: $ownerId, fromId: $fromId, date: $date, postType: $postType, text: $text, attachments: $attachments, postSource: $postSource)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CopyHistory &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.ownerId, ownerId) &&
            const DeepCollectionEquality().equals(other.fromId, fromId) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.postType, postType) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality()
                .equals(other._attachments, _attachments) &&
            const DeepCollectionEquality()
                .equals(other.postSource, postSource));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(ownerId),
      const DeepCollectionEquality().hash(fromId),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(postType),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(_attachments),
      const DeepCollectionEquality().hash(postSource));

  @JsonKey(ignore: true)
  @override
  _$$_CopyHistoryCopyWith<_$_CopyHistory> get copyWith =>
      __$$_CopyHistoryCopyWithImpl<_$_CopyHistory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CopyHistoryToJson(this);
  }
}

abstract class _CopyHistory implements CopyHistory {
  factory _CopyHistory(
          {final int? id,
          @JsonKey(name: 'owner_id') final int? ownerId,
          @JsonKey(name: 'from_id') final int? fromId,
          final int? date,
          @JsonKey(name: 'post_type') final String? postType,
          final String? text,
          final List<Attachment>? attachments,
          @JsonKey(name: 'post_source') final PostSource? postSource}) =
      _$_CopyHistory;

  factory _CopyHistory.fromJson(Map<String, dynamic> json) =
      _$_CopyHistory.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'owner_id')
  int? get ownerId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'from_id')
  int? get fromId => throw _privateConstructorUsedError;
  @override
  int? get date => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'post_type')
  String? get postType => throw _privateConstructorUsedError;
  @override
  String? get text => throw _privateConstructorUsedError;
  @override
  List<Attachment>? get attachments => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'post_source')
  PostSource? get postSource => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CopyHistoryCopyWith<_$_CopyHistory> get copyWith =>
      throw _privateConstructorUsedError;
}
