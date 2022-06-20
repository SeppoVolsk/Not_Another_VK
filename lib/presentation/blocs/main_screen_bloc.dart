import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vk_postman/presentation/blocs/main_screen_repository.dart';
import 'package:vk_postman/presentation/blocs/mainscreenentity.dart';
part 'main_screen_bloc.freezed.dart';

/* MainScreen Events */

@freezed
class MainScreenEvent with _$MainScreenEvent {
  const MainScreenEvent._();
  const factory MainScreenEvent.load([String? query]) = LoadMainScreenEvent;
}

/* MainScreen States */

@freezed
class MainScreenState with _$MainScreenState {
  const MainScreenState._();

  /// Idling state
  const factory MainScreenState.idle({
    required final MainScreenEntity data,
    @Default('Idle') final String message,
  }) = IdleMainScreenState;

  /// Processing
  const factory MainScreenState.processing({
    required final MainScreenEntity data,
    @Default('Processing') final String message,
  }) = ProcessingMainScreenState;

  /// Successful
  const factory MainScreenState.successful({
    required final MainScreenEntity data,
    @Default('Successful') final String message,
  }) = SuccessfulMainScreenState;

  const factory MainScreenState.error({
    required final MainScreenEntity data,
    @Default('Error') final String message,
  }) = ErrorMainScreenState;
}

class MainScreenBLoC extends Bloc<MainScreenEvent, MainScreenState>
    implements EventSink<MainScreenEvent> {
  MainScreenBLoC({
    required final IMainScreenRepository repository,
    final MainScreenState? initialState,
  })  : _repository = repository,
        super(
          initialState ??
              const MainScreenState.idle(
                data: MainScreenEntity(),
                message: 'Initial idle state',
              ),
        ) {
    on<MainScreenEvent>(
      (event, emit) => event.map<Future<void>>(
        load: (event) => _load(event, emit),
      ),
      transformer: bloc_concurrency.sequential(),
      //transformer: bloc_concurrency.restartable(),
      //transformer: bloc_concurrency.droppable(),
      //transformer: bloc_concurrency.concurrent(),
    );
  }

  final IMainScreenRepository _repository;

  Future<void> _load(
      LoadMainScreenEvent event, Emitter<MainScreenState> emit) async {
    try {
      emit(MainScreenState.processing(data: state.data));
      final newData = await _repository.read(event.query);
      emit(MainScreenState.successful(data: newData));
    } on Object catch (err, stackTrace) {
      print('В MainScreenBLoC произошла ошибка: $err $stackTrace');
      emit(MainScreenState.error(data: state.data));
      rethrow;
    }
  }
}
