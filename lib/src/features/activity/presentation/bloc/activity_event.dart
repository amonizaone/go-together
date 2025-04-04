import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gotogether/src/core/models/activity/activity_model.dart';

part 'activity_event.freezed.dart';

@freezed
class ActivityEvent with _$ActivityEvent {
  const factory ActivityEvent.initial() = _Initial;
  const factory ActivityEvent.fetchActivities() = FetchActivities;
  const factory ActivityEvent.getById(String id) = GetById;
  const factory ActivityEvent.selected(Activity activity) = Selected;
  const factory ActivityEvent.setLoading(bool value) = SetLoading;

}
