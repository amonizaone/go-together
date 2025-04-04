import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:gotogether/src/core/constants/data_mock.dart';
import 'package:gotogether/src/core/models/activity/activity_model.dart';

part 'party_state.dart';

class PartyCubit extends Cubit<PartyState> {
  PartyCubit() : super(PartyInitial());

  void init() async {
    Duration duration = const Duration(seconds: 2);
    await Future.delayed(duration);
    getActivitys();
  }

  // dataExplore

  void getActivitys() {
    try {
      emit(PartyLoading());
      List<Activity> activitys = [];

      activitys =
          DataMock.dataExplore.map((e) => Activity.fromJson(e)).toList();

      emit(PartyLoaded(activitys));
    } catch (e) {
      emit(PartyError(e.toString()));
    }
  }
}
