// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ActivityStateImpl _$$ActivityStateImplFromJson(Map<String, dynamic> json) =>
    _$ActivityStateImpl(
      activities: (json['activities'] as List<dynamic>?)
              ?.map((e) => Activity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      selected: json['selected'] == null
          ? null
          : Activity.fromJson(json['selected'] as Map<String, dynamic>),
      isLoading: json['isLoading'] as bool? ?? false,
      error: json['error'] as String?,
    );

Map<String, dynamic> _$$ActivityStateImplToJson(_$ActivityStateImpl instance) =>
    <String, dynamic>{
      'activities': instance.activities,
      'selected': instance.selected,
      'isLoading': instance.isLoading,
      'error': instance.error,
    };
