import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vk_postman/presentation/blocs/app_theme/app_theme_repository.dart';
import 'package:vk_postman/presentation/blocs/app_theme/appthemeentity.dart';


part 'app_theme_bloc.freezed.dart';

/* AppTheme Events */

@freezed
class AppThemeEvent with _$AppThemeEvent {
  const AppThemeEvent._();

  const factory AppThemeEvent.read() = ReadAppThemeEvent;

  const factory AppThemeEvent.change() = ChangeAppThemeEvent;
}

/* AppTheme States */

@freezed
class AppThemeState with _$AppThemeState {
  const AppThemeState._();

  const factory AppThemeState.unknow({
    required final AppThemeEntity data,
    @Default('Unknow theme') final String message,
  }) = UnknowAppThemeState;

  /// Processing
  const factory AppThemeState.light({
    required final AppThemeEntity data,
    @Default('Light theme') final String message,
  }) = LightAppThemeState;

  /// Successful
  const factory AppThemeState.dark({
    required final AppThemeEntity data,
    @Default('Dark theme') final String message,
  }) = DarkAppThemeState;

  /// An error has occurred
  const factory AppThemeState.error({
    required final AppThemeEntity data,
    @Default('An error has occurred') final String message,
  }) = ErrorAppThemeState;
}

/// Buisiness Logic Component AppThemeBLoC
class AppThemeBLoC extends Bloc<AppThemeEvent, AppThemeState>
    implements EventSink<AppThemeEvent> {
  AppThemeBLoC({
    required final IAppThemeRepository repository,
    final AppThemeState? initialState,
  })  : _repository = repository,
        super(
          initialState ??
              AppThemeState.unknow(
                data: AppThemeEntity(),
                message: 'Unknow theme state',
              ),
        ) {
    on<AppThemeEvent>(
      (event, emit) => event.map<Future<void>>(
        read: (event) => _read(event, emit),
        change: (event) => _update(event, emit),
      ),
      transformer: bloc_concurrency.sequential(),
      //transformer: bloc_concurrency.restartable(),
      //transformer: bloc_concurrency.droppable(),
      //transformer: bloc_concurrency.concurrent(),
    );
  }

  final IAppThemeRepository _repository;
  ThemeMode? _themeMode;

  /// Read event handler
  Future<void> _read(
      ReadAppThemeEvent event, Emitter<AppThemeState> emit) async {
    try {
      emit(AppThemeState.unknow(data: state.data));
      final newData = await _repository.checkCurrentTheme();
      if (newData.appThemeMode == ThemeMode.light) {
        emit(AppThemeState.light(data: newData));
        _themeMode = ThemeMode.light;
      } else {
        emit(AppThemeState.dark(data: newData));
        _themeMode = ThemeMode.dark;
      }
    } on Object catch (err, stackTrace) {
      print('В AppThemeBLoC произошла ошибка: $err $stackTrace');
      emit(AppThemeState.error(data: state.data));
      rethrow;
    }
  }

  /// Update event handler
  Future<void> _update(
      ChangeAppThemeEvent event, Emitter<AppThemeState> emit) async {
    try {
      print('BLoC Theme Mode $_themeMode');
      final newData = await _repository.changeTheme(_themeMode!);
      if (_themeMode == ThemeMode.light) {
        emit(AppThemeState.dark(data: newData));
        _themeMode = ThemeMode.dark;
      } else {
        emit(AppThemeState.light(data: newData));
        _themeMode = ThemeMode.light;
      }
    } on Object catch (err, stackTrace) {
      print('В AppThemeBLoC произошла ошибка: $err $stackTrace');
      emit(AppThemeState.error(data: state.data));
      rethrow;
    }
  }
}
