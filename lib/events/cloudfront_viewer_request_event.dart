import 'package:json_annotation/json_annotation.dart';

part 'cloudfront_viewer_request_event.g.dart';

@JsonSerializable()
class CloudFrontViewerRequestEventRecord {
  @JsonKey()
  final CloudFrontConfig cf;

  CloudFrontViewerRequestEventRecord({
    required this.cf,
  });

  factory CloudFrontViewerRequestEventRecord.fromJson(Map<String, dynamic> json) =>
      _$CloudFrontViewerRequestEventRecordFromJson(json);

  Map<String, dynamic> toJson() => _$CloudFrontViewerRequestEventRecordToJson(this);
}

@JsonSerializable()
class CloudFrontConfig {
  @JsonKey()
  final CloudFrontDistributionConfig config;

  @JsonKey()
  final CloudFrontRequest request;

  CloudFrontConfig({
    required this.config,
    required this.request,
  });

  factory CloudFrontConfig.fromJson(Map<String, dynamic> json) => _$CloudFrontConfigFromJson(json);

  Map<String, dynamic> toJson() => _$CloudFrontConfigToJson(this);
}

@JsonSerializable()
class CloudFrontDistributionConfig {
  @JsonKey()
  final String distributionDomainName;

  @JsonKey()
  final String distributionId;

  @JsonKey()
  final String eventType;

  @JsonKey()
  final String requestId;

  CloudFrontDistributionConfig({
    required this.distributionDomainName,
    required this.distributionId,
    required this.eventType,
    required this.requestId,
  });

  factory CloudFrontDistributionConfig.fromJson(Map<String, dynamic> json) =>
      _$CloudFrontDistributionConfigFromJson(json);

  Map<String, dynamic> toJson() => _$CloudFrontDistributionConfigToJson(this);
}

@JsonSerializable()
class CloudFrontRequest {
  @JsonKey()
  final String clientIp;

  @JsonKey()
  final Map<String, List<CloudFrontHeader>> headers;

  @JsonKey()
  final String method;

  @JsonKey()
  final String querystring;

  @JsonKey()
  final String uri;

  CloudFrontRequest({
    required this.clientIp,
    required this.headers,
    required this.method,
    required this.querystring,
    required this.uri,
  });

  factory CloudFrontRequest.fromJson(Map<String, dynamic> json) => _$CloudFrontRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CloudFrontRequestToJson(this);
}

@JsonSerializable()
class CloudFrontHeader {
  @JsonKey()
  final String key;

  @JsonKey()
  final String value;

  CloudFrontHeader({
    required this.key,
    required this.value,
  });

  factory CloudFrontHeader.fromJson(Map<String, dynamic> json) => _$CloudFrontHeaderFromJson(json);

  Map<String, dynamic> toJson() => _$CloudFrontHeaderToJson(this);
}

@JsonSerializable()
class CloudFrontViewerRequestEvent {
  @JsonKey(name: 'Records')
  final List<CloudFrontViewerRequestEventRecord> records;

  CloudFrontViewerRequestEvent({
    required this.records,
  });

  factory CloudFrontViewerRequestEvent.fromJson(Map<String, dynamic> json) =>
      _$CloudFrontViewerRequestEventFromJson(json);

  Map<String, dynamic> toJson() => _$CloudFrontViewerRequestEventToJson(this);
}
