import 'package:freezed_annotation/freezed_annotation.dart';

part 'authenticationentity.freezed.dart';

@freezed
class AuthenticationEntity with _$AuthenticationEntity {
  factory AuthenticationEntity({String? accessToken, String? userId}) =
      _AuthenticationEntity;
}
