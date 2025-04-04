// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ActivityImpl _$$ActivityImplFromJson(Map<String, dynamic> json) =>
    _$ActivityImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      location: json['location'] as String,
      date: json['date'] as String,
      time: json['time'] as String,
      owner: User.fromJson(json['owner'] as Map<String, dynamic>),
      joinedUsers: (json['joinedUsers'] as List<dynamic>)
          .map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
      maxParticipants: (json['maxParticipants'] as num).toInt(),
      currentParticipants: (json['currentParticipants'] as num).toInt(),
      photos:
          (json['photos'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$ActivityImplToJson(_$ActivityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'tags': instance.tags,
      'location': instance.location,
      'date': instance.date,
      'time': instance.time,
      'owner': instance.owner,
      'joinedUsers': instance.joinedUsers,
      'maxParticipants': instance.maxParticipants,
      'currentParticipants': instance.currentParticipants,
      'photos': instance.photos,
    };
