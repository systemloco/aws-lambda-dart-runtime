import 'package:aws_lambda_runtime/runtime/event.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cloudfront_origin_request_event.g.dart';

@JsonSerializable()
class CloudFrontOriginRequestEventRecord extends Event {
  @JsonKey()
  final CloudFrontOriginRequestConfig cf;

  CloudFrontOriginRequestEventRecord({
    required this.cf,
  });

  factory CloudFrontOriginRequestEventRecord.fromJson(Map<String, dynamic> json) =>
      _$CloudFrontOriginRequestEventRecordFromJson(json);

  Map<String, dynamic> toJson() => _$CloudFrontOriginRequestEventRecordToJson(this);
}

@JsonSerializable()
class CloudFrontOriginRequestConfig {
  @JsonKey()
  final CloudFrontOriginRequestDistributionConfig config;

  @JsonKey()
  final CloudFrontOriginRequest request;

  CloudFrontOriginRequestConfig({
    required this.config,
    required this.request,
  });

  factory CloudFrontOriginRequestConfig.fromJson(Map<String, dynamic> json) =>
      _$CloudFrontOriginRequestConfigFromJson(json);

  Map<String, dynamic> toJson() => _$CloudFrontOriginRequestConfigToJson(this);
}

@JsonSerializable()
class CloudFrontOriginRequestDistributionConfig {
  @JsonKey()
  final String distributionDomainName;

  @JsonKey()
  final String distributionId;

  @JsonKey()
  final String eventType;

  @JsonKey()
  final String requestId;

  CloudFrontOriginRequestDistributionConfig({
    required this.distributionDomainName,
    required this.distributionId,
    required this.eventType,
    required this.requestId,
  });

  factory CloudFrontOriginRequestDistributionConfig.fromJson(Map<String, dynamic> json) =>
      _$CloudFrontOriginRequestDistributionConfigFromJson(json);

  Map<String, dynamic> toJson() => _$CloudFrontOriginRequestDistributionConfigToJson(this);
}

@JsonSerializable()
class CloudFrontOriginRequest {
  @JsonKey()
  final String clientIp;

  @JsonKey()
  final Map<String, List<CloudFrontOriginRquestHeader>> headers;

  @JsonKey()
  final String method;

  @JsonKey()
  final String querystring;

  @JsonKey()
  final String uri;

  @JsonKey()
  final CloudFrontOrigin? origin;

  CloudFrontOriginRequest({
    required this.clientIp,
    required this.headers,
    required this.method,
    required this.querystring,
    required this.uri,
    this.origin,
  });

  factory CloudFrontOriginRequest.fromJson(Map<String, dynamic> json) => _$CloudFrontOriginRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CloudFrontOriginRequestToJson(this);
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
  final Map<String, List<CloudFrontOriginRquestHeader>> customHeaders;

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
class CloudFrontOriginRquestHeader {
  @JsonKey()
  final String key;

  @JsonKey()
  final String value;

  CloudFrontOriginRquestHeader({
    required this.key,
    required this.value,
  });

  factory CloudFrontOriginRquestHeader.fromJson(Map<String, dynamic> json) =>
      _$CloudFrontOriginRquestHeaderFromJson(json);

  Map<String, dynamic> toJson() => _$CloudFrontOriginRquestHeaderToJson(this);
}

@JsonSerializable()
class AwsCloudFrontOriginRequestEvent {
  @JsonKey(name: 'Records')
  final List<CloudFrontOriginRequestEventRecord> records;

  AwsCloudFrontOriginRequestEvent({
    required this.records,
  });

  factory AwsCloudFrontOriginRequestEvent.fromJson(Map<String, dynamic> json) =>
      _$AwsCloudFrontOriginRequestEventFromJson(json);

  Map<String, dynamic> toJson() => _$AwsCloudFrontOriginRequestEventToJson(this);
}
