// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cloudfront_viewer_request_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CloudFrontViewerRequestEventRecord _$CloudFrontViewerRequestEventRecordFromJson(
        Map<String, dynamic> json) =>
    CloudFrontViewerRequestEventRecord(
      cf: CloudFrontConfig.fromJson(json['cf'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CloudFrontViewerRequestEventRecordToJson(
        CloudFrontViewerRequestEventRecord instance) =>
    <String, dynamic>{
      'cf': instance.cf,
    };

CloudFrontConfig _$CloudFrontConfigFromJson(Map<String, dynamic> json) =>
    CloudFrontConfig(
      config: CloudFrontDistributionConfig.fromJson(
          json['config'] as Map<String, dynamic>),
      request:
          CloudFrontRequest.fromJson(json['request'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CloudFrontConfigToJson(CloudFrontConfig instance) =>
    <String, dynamic>{
      'config': instance.config,
      'request': instance.request,
    };

CloudFrontDistributionConfig _$CloudFrontDistributionConfigFromJson(
        Map<String, dynamic> json) =>
    CloudFrontDistributionConfig(
      distributionDomainName: json['distributionDomainName'] as String,
      distributionId: json['distributionId'] as String,
      eventType: json['eventType'] as String,
      requestId: json['requestId'] as String,
    );

Map<String, dynamic> _$CloudFrontDistributionConfigToJson(
        CloudFrontDistributionConfig instance) =>
    <String, dynamic>{
      'distributionDomainName': instance.distributionDomainName,
      'distributionId': instance.distributionId,
      'eventType': instance.eventType,
      'requestId': instance.requestId,
    };

CloudFrontRequest _$CloudFrontRequestFromJson(Map<String, dynamic> json) =>
    CloudFrontRequest(
      clientIp: json['clientIp'] as String,
      headers: (json['headers'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            k,
            (e as List<dynamic>)
                .map(
                    (e) => CloudFrontHeader.fromJson(e as Map<String, dynamic>))
                .toList()),
      ),
      method: json['method'] as String,
      querystring: json['querystring'] as String,
      uri: json['uri'] as String,
    );

Map<String, dynamic> _$CloudFrontRequestToJson(CloudFrontRequest instance) =>
    <String, dynamic>{
      'clientIp': instance.clientIp,
      'headers': instance.headers,
      'method': instance.method,
      'querystring': instance.querystring,
      'uri': instance.uri,
    };

CloudFrontHeader _$CloudFrontHeaderFromJson(Map<String, dynamic> json) =>
    CloudFrontHeader(
      key: json['key'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$CloudFrontHeaderToJson(CloudFrontHeader instance) =>
    <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
    };

AwsCloudFrontViewerRequestEvent _$AwsCloudFrontViewerRequestEventFromJson(
        Map<String, dynamic> json) =>
    AwsCloudFrontViewerRequestEvent(
      records: (json['Records'] as List<dynamic>)
          .map((e) => CloudFrontViewerRequestEventRecord.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AwsCloudFrontViewerRequestEventToJson(
        AwsCloudFrontViewerRequestEvent instance) =>
    <String, dynamic>{
      'Records': instance.records,
    };
