// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'donut.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Donut _$DonutFromJson(Map<String, dynamic> json) {
  return _Donut.fromJson(json);
}

/// @nodoc
mixin _$Donut {
  @JsonKey(name: 'is_donut')
  bool? get isDonut => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DonutCopyWith<Donut> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DonutCopyWith<$Res> {
  factory $DonutCopyWith(Donut value, $Res Function(Donut) then) =
      _$DonutCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'is_donut') bool? isDonut});
}

/// @nodoc
class _$DonutCopyWithImpl<$Res> implements $DonutCopyWith<$Res> {
  _$DonutCopyWithImpl(this._value, this._then);

  final Donut _value;
  // ignore: unused_field
  final $Res Function(Donut) _then;

  @override
  $Res call({
    Object? isDonut = freezed,
  }) {
    return _then(_value.copyWith(
      isDonut: isDonut == freezed
          ? _value.isDonut
          : isDonut // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$$_DonutCopyWith<$Res> implements $DonutCopyWith<$Res> {
  factory _$$_DonutCopyWith(_$_Donut value, $Res Function(_$_Donut) then) =
      __$$_DonutCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'is_donut') bool? isDonut});
}

/// @nodoc
class __$$_DonutCopyWithImpl<$Res> extends _$DonutCopyWithImpl<$Res>
    implements _$$_DonutCopyWith<$Res> {
  __$$_DonutCopyWithImpl(_$_Donut _value, $Res Function(_$_Donut) _then)
      : super(_value, (v) => _then(v as _$_Donut));

  @override
  _$_Donut get _value => super._value as _$_Donut;

  @override
  $Res call({
    Object? isDonut = freezed,
  }) {
    return _then(_$_Donut(
      isDonut: isDonut == freezed
          ? _value.isDonut
          : isDonut // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Donut implements _Donut {
  _$_Donut({@JsonKey(name: 'is_donut') this.isDonut});

  factory _$_Donut.fromJson(Map<String, dynamic> json) =>
      _$$_DonutFromJson(json);

  @override
  @JsonKey(name: 'is_donut')
  final bool? isDonut;

  @override
  String toString() {
    return 'Donut(isDonut: $isDonut)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Donut &&
            const DeepCollectionEquality().equals(other.isDonut, isDonut));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isDonut));

  @JsonKey(ignore: true)
  @override
  _$$_DonutCopyWith<_$_Donut> get copyWith =>
      __$$_DonutCopyWithImpl<_$_Donut>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DonutToJson(this);
  }
}

abstract class _Donut implements Donut {
  factory _Donut({@JsonKey(name: 'is_donut') final bool? isDonut}) = _$_Donut;

  factory _Donut.fromJson(Map<String, dynamic> json) = _$_Donut.fromJson;

  @override
  @JsonKey(name: 'is_donut')
  bool? get isDonut => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DonutCopyWith<_$_Donut> get copyWith =>
      throw _privateConstructorUsedError;
}
