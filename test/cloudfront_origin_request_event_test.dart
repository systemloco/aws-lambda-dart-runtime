import 'dart:convert';

import 'package:aws_lambda_runtime/events/cloudfront_origin_request_event.dart';
import 'package:test/test.dart';

void main() {
  test('CloudFrontOriginRequestEvent deserializes correctly', () {
    const jsonString = '''
    {
      "Records": [
        {
          "cf": {
            "config": {
              "distributionDomainName": "d111111abcdef8.cloudfront.net",
              "distributionId": "EDFDVBD6EXAMPLE",
              "eventType": "origin-request",
              "requestId": "4TyzHTaYWb1GX1qTfsHhEqV6HUDd_BzoBZnwfnvQc_1oF26ClkoUSEQ=="
            },
            "request": {
              "clientIp": "203.0.113.178",
              "headers": {
                "x-forwarded-for": [
                  {
                    "key": "X-Forwarded-For",
                    "value": "203.0.113.178"
                  }
                ],
                "user-agent": [
                  {
                    "key": "User-Agent",
                    "value": "Amazon CloudFront"
                  }
                ],
                "via": [
                  {
                    "key": "Via",
                    "value": "2.0 2afae0d44e2540f472c0635ab62c232b.cloudfront.net (CloudFront)"
                  }
                ],
                "host": [
                  {
                    "key": "Host",
                    "value": "example.org"
                  }
                ],
                "cache-control": [
                  {
                    "key": "Cache-Control",
                    "value": "no-cache"
                  }
                ]
              },
              "method": "GET",
              "origin": {
                "custom": {
                  "customHeaders": {},
                  "domainName": "example.org",
                  "keepaliveTimeout": 5,
                  "path": "",
                  "port": 443,
                  "protocol": "https",
                  "readTimeout": 30,
                  "sslProtocols": [
                    "TLSv1",
                    "TLSv1.1",
                    "TLSv1.2"
                  ]
                }
              },
              "querystring": "",
              "uri": "/"
            }
          }
        }
      ]
    }
    ''';

    final jsonData = json.decode(jsonString) as Map<String, dynamic>;
    final event = CloudFrontOriginRequestEvent.fromJson(jsonData);

    expect(event.records.length, 1);
    final record = event.records.first;
    expect(record.cf.config.distributionDomainName, "d111111abcdef8.cloudfront.net");
    expect(record.cf.config.distributionId, "EDFDVBD6EXAMPLE");
    expect(record.cf.config.eventType, "origin-request");
    expect(record.cf.config.requestId, "4TyzHTaYWb1GX1qTfsHhEqV6HUDd_BzoBZnwfnvQc_1oF26ClkoUSEQ==");
    expect(record.cf.request.clientIp, "203.0.113.178");
    expect(record.cf.request.headers["x-forwarded-for"]!.first.key, "X-Forwarded-For");
    expect(record.cf.request.headers["x-forwarded-for"]!.first.value, "203.0.113.178");
    expect(record.cf.request.method, "GET");
    expect(record.cf.request.uri, "/");
    expect(record.cf.request.origin?.custom.domainName, "example.org");
    expect(record.cf.request.origin?.custom.keepaliveTimeout, 5);
    expect(record.cf.request.origin?.custom.protocol, "https");
    expect(record.cf.request.origin?.custom.sslProtocols, ["TLSv1", "TLSv1.1", "TLSv1.2"]);
  });
}
