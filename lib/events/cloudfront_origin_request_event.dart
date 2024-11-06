import 'package:json_annotation/json_annotation.dart';

part 'cloudfront_origin_request_event.g.dart';

@JsonSerializable()
class CloudFrontOriginRequestEventRecord {
  @JsonKey()
  final CloudFrontConfig cf;

  CloudFrontOriginRequestEventRecord({
    required this.cf,
  });

  factory CloudFrontOriginRequestEventRecord.fromJson(Map<String, dynamic> json) =>
      _$CloudFrontOriginRequestEventRecordFromJson(json);

  Map<String, dynamic> toJson() => _$CloudFrontOriginRequestEventRecordToJson(this);
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

  @JsonKey()
  final CloudFrontOrigin? origin;

  CloudFrontRequest({
    required this.clientIp,
    required this.headers,
    required this.method,
    required this.querystring,
    required this.uri,
    this.origin,
  });

  factory CloudFrontRequest.fromJson(Map<String, dynamic> json) => _$CloudFrontRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CloudFrontRequestToJson(this);
}

@JsonSerializable()
class CloudFrontOrigin {
  @JsonKey()
  final CloudFrontCustomOrigin custom;

  CloudFrontOrigin({
    required this.custom,
  });

  factory CloudFrontOrigin.fromJson(Map<String, dynamic> json) => _$CloudFrontOriginFromJson(json);

  Map<String, dynamic> toJson() => _$CloudFrontOriginToJson(this);
}

@JsonSerializable()
class CloudFrontCustomOrigin {
  @JsonKey()
  final Map<String, List<CloudFrontHeader>> customHeaders;

  @JsonKey()
  final String domainName;

  @JsonKey()
  final int keepaliveTimeout;

  @JsonKey()
  final String path;

  @JsonKey()
  final int port;

  @JsonKey()
  final String protocol;

  @JsonKey()
  final int readTimeout;

  @JsonKey()
  final List<String> sslProtocols;

  CloudFrontCustomOrigin({
    required this.customHeaders,
    required this.domainName,
    required this.keepaliveTimeout,
    required this.path,
    required this.port,
    required this.protocol,
    required this.readTimeout,
    required this.sslProtocols,
  });

  factory CloudFrontCustomOrigin.fromJson(Map<String, dynamic> json) => _$CloudFrontCustomOriginFromJson(json);

  Map<String, dynamic> toJson() => _$CloudFrontCustomOriginToJson(this);
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
class CloudFrontOriginRequestEvent {
  @JsonKey(name: 'Records')
  final List<CloudFrontOriginRequestEventRecord> records;

  CloudFrontOriginRequestEvent({
    required this.records,
  });

  factory CloudFrontOriginRequestEvent.fromJson(Map<String, dynamic> json) =>
      _$CloudFrontOriginRequestEventFromJson(json);

  Map<String, dynamic> toJson() => _$CloudFrontOriginRequestEventToJson(this);
}
