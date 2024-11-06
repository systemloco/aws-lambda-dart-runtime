import 'dart:convert';

import 'package:aws_lambda_runtime/events/cloudfront_viewer_request_event.dart';
import 'package:test/test.dart';

void main() {
  test('CloudFrontViewerRequestEvent deserializes correctly', () {
    const jsonString = '''
    {
      "Records": [
        {
          "cf": {
            "config": {
              "distributionDomainName": "d111111abcdef8.cloudfront.net",
              "distributionId": "EDFDVBD6EXAMPLE",
              "eventType": "viewer-request",
              "requestId": "4TyzHTaYWb1GX1qTfsHhEqV6HUDd_BzoBZnwfnvQc_1oF26ClkoUSEQ=="
            },
            "request": {
              "clientIp": "203.0.113.178",
              "headers": {
                "host": [
                  {
                    "key": "Host",
                    "value": "d111111abcdef8.cloudfront.net"
                  }
                ],
                "user-agent": [
                  {
                    "key": "User-Agent",
                    "value": "curl/7.66.0"
                  }
                ],
                "accept": [
                  {
                    "key": "accept",
                    "value": "*/*"
                  }
                ]
              },
              "method": "GET",
              "querystring": "",
              "uri": "/"
            }
          }
        }
      ]
    }
    ''';

    final jsonData = json.decode(jsonString) as Map<String, dynamic>;
    final event = CloudFrontViewerRequestEvent.fromJson(jsonData);

    expect(event.records.length, 1);
    final record = event.records.first;
    expect(record.cf.config.distributionDomainName, "d111111abcdef8.cloudfront.net");
    expect(record.cf.config.distributionId, "EDFDVBD6EXAMPLE");
    expect(record.cf.config.eventType, "viewer-request");
    expect(record.cf.config.requestId, "4TyzHTaYWb1GX1qTfsHhEqV6HUDd_BzoBZnwfnvQc_1oF26ClkoUSEQ==");
    expect(record.cf.request.clientIp, "203.0.113.178");
    expect(record.cf.request.headers["host"]!.first.key, "Host");
    expect(record.cf.request.headers["host"]!.first.value, "d111111abcdef8.cloudfront.net");
    expect(record.cf.request.method, "GET");
    expect(record.cf.request.querystring, "");
    expect(record.cf.request.uri, "/");
  });
}
