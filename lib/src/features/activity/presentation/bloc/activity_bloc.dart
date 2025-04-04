import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gotogether/src/core/constants/data_mock.dart';
import 'package:gotogether/src/core/models/activity/activity_model.dart';
import 'activity_event.dart';
import 'activity_state.dart';

class ActivityBloc extends Bloc<ActivityEvent, ActivityState> {
  ActivityBloc() : super(const ActivityState()) {
    on<FetchActivities>(_onFetchActivities);
    on<GetById>((event, emit) {
      final found = _findActivityById(event.id);
      if (found != null) {
        emit(state.copyWith(selected: found));
      } else {
        // emit(const ActivityState.error("Activity not found"));
      }
    });
    on<SetLoading>(
      (event, emit) => emit(
        state.copyWith(isLoading: event.value),
      ),
    );
    on<Selected>(
      (event, emit) {
        emit(state.copyWith(selected: event.activity));
      },
    );
  }

  Activity? _findActivityById(String id) {
    return state.activities.where((e) => e.id == id).firstOrNull;

    // state.maybeWhen(orElse: orElse).firstWhereOrNull((e) => e.id == id);
  }

  Future<void> _onFetchActivities(
    FetchActivities event,
    Emitter<ActivityState> emit,
  ) async {
    add(ActivityEvent.setLoading(true));
    try {
      // จำลอง API call หรือโหลดไฟล์ local json
      await Future.delayed(const Duration(seconds: 1));
      final List<Activity> data = []; // ดึงจาก service หรือ repo

      data.addAll(
          DataMock.dataExplore.map((e) => Activity.fromJson(e)).toList());

      emit(state.copyWith(activities: data));
      add(ActivityEvent.setLoading(false));
    } catch (e) {
      // emit(ActivityState.error(e.toString()));
    }
  }
}
