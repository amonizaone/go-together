import 'package:freezed_annotation/freezed_annotation.dart';
import 'user_model.dart';

part 'activity_model.freezed.dart';
part 'activity_model.g.dart';

@freezed
class Activity with _$Activity {
  const factory Activity({
    required String id,
    required String title,
    required String description,
    required List<String> tags,
    required String location,
    required String date,
    required String time,
    required User owner,
    required List<User> joinedUsers,
    required int maxParticipants,
    required int currentParticipants,
    required List<String> photos,
  }) = _Activity;

  factory Activity.fromJson(Map<String, dynamic> json) =>
      _$ActivityFromJson(json);
}
