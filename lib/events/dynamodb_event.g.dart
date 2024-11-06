// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dynamodb_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AwsDynamoDBUpdateRecord _$AwsDynamoDBUpdateRecordFromJson(
        Map<String, dynamic> json) =>
    AwsDynamoDBUpdateRecord(
      keys: json['Keys'] as Map<String, dynamic>?,
      oldImage: json['OldImage'] as Map<String, dynamic>?,
      newImage: json['NewImage'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$AwsDynamoDBUpdateRecordToJson(
        AwsDynamoDBUpdateRecord instance) =>
    <String, dynamic>{
      'Keys': instance.keys,
      'NewImage': instance.newImage,
      'OldImage': instance.oldImage,
    };

AwsDynamoDBUpdateEventRecord _$AwsDynamoDBUpdateEventRecordFromJson(
        Map<String, dynamic> json) =>
    AwsDynamoDBUpdateEventRecord(
      eventId: json['eventId'] as String?,
      eventName: json['eventName'] as String?,
      eventSource: json['eventSource'] as String?,
      eventVersion: json['eventVersion'] as String?,
      awsRegion: json['awsRegion'] as String?,
      eventSourceARN: json['eventSourceARN'] as String?,
      dynamodb: json['dynamodb'] == null
          ? null
          : AwsDynamoDBUpdateRecord.fromJson(
              json['dynamodb'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AwsDynamoDBUpdateEventRecordToJson(
        AwsDynamoDBUpdateEventRecord instance) =>
    <String, dynamic>{
      'dynamodb': instance.dynamodb,
      'eventId': instance.eventId,
      'eventName': instance.eventName,
      'eventSource': instance.eventSource,
      'eventVersion': instance.eventVersion,
      'awsRegion': instance.awsRegion,
      'eventSourceARN': instance.eventSourceARN,
    };

AwsDynamoDBUpdateEvent _$AwsDynamoDBUpdateEventFromJson(
        Map<String, dynamic> json) =>
    AwsDynamoDBUpdateEvent(
      records: (json['Records'] as List<dynamic>?)
          ?.map((e) =>
              AwsDynamoDBUpdateEventRecord.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AwsDynamoDBUpdateEventToJson(
        AwsDynamoDBUpdateEvent instance) =>
    <String, dynamic>{
      'Records': instance.records,
    };
