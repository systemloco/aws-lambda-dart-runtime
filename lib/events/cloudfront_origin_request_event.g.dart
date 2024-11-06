// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cloudfront_origin_request_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CloudFrontOriginRequestEventRecord _$CloudFrontOriginRequestEventRecordFromJson(
        Map<String, dynamic> json) =>
    CloudFrontOriginRequestEventRecord(
      cf: CloudFrontConfig.fromJson(json['cf'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CloudFrontOriginRequestEventRecordToJson(
        CloudFrontOriginRequestEventRecord instance) =>
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
      origin: json['origin'] == null
          ? null
          : CloudFrontOrigin.fromJson(json['origin'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CloudFrontRequestToJson(CloudFrontRequest instance) =>
    <String, dynamic>{
      'clientIp': instance.clientIp,
      'headers': instance.headers,
      'method': instance.method,
      'querystring': instance.querystring,
      'uri': instance.uri,
      'origin': instance.origin,
    };

CloudFrontOrigin _$CloudFrontOriginFromJson(Map<String, dynamic> json) =>
    CloudFrontOrigin(
      custom: CloudFrontCustomOrigin.fromJson(
          json['custom'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CloudFrontOriginToJson(CloudFrontOrigin instance) =>
    <String, dynamic>{
      'custom': instance.custom,
    };

CloudFrontCustomOrigin _$CloudFrontCustomOriginFromJson(
        Map<String, dynamic> json) =>
    CloudFrontCustomOrigin(
      customHeaders: (json['customHeaders'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            k,
            (e as List<dynamic>)
                .map(
                    (e) => CloudFrontHeader.fromJson(e as Map<String, dynamic>))
                .toList()),
      ),
      domainName: json['domainName'] as String,
      keepaliveTimeout: (json['keepaliveTimeout'] as num).toInt(),
      path: json['path'] as String,
      port: (json['port'] as num).toInt(),
      protocol: json['protocol'] as String,
      readTimeout: (json['readTimeout'] as num).toInt(),
      sslProtocols: (json['sslProtocols'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$CloudFrontCustomOriginToJson(
        CloudFrontCustomOrigin instance) =>
    <String, dynamic>{
      'customHeaders': instance.customHeaders,
      'domainName': instance.domainName,
      'keepaliveTimeout': instance.keepaliveTimeout,
      'path': instance.path,
      'port': instance.port,
      'protocol': instance.protocol,
      'readTimeout': instance.readTimeout,
      'sslProtocols': instance.sslProtocols,
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

CloudFrontOriginRequestEvent _$CloudFrontOriginRequestEventFromJson(
        Map<String, dynamic> json) =>
    CloudFrontOriginRequestEvent(
      records: (json['Records'] as List<dynamic>)
          .map((e) => CloudFrontOriginRequestEventRecord.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CloudFrontOriginRequestEventToJson(
        CloudFrontOriginRequestEvent instance) =>
    <String, dynamic>{
      'Records': instance.records,
    };
