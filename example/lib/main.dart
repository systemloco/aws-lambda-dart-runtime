import 'package:aws_lambda_runtime/aws_lambda_runtime.dart';
import 'package:aws_lambda_runtime/runtime/context.dart';

void main() async {
  /// This demo's handling an API Gateway request.
  final helloApiGateway = (Context context, AwsApiGatewayEvent event) async {
    final response = {'message': 'hello ${context.requestId}'};

    /// it returns an response to the gateway
    return AwsApiGatewayResponse.fromJson(response);
  };

  /// The Runtime is a singleton. You can define the handlers as you wish.
  Runtime()
    ..registerHandler<AwsApiGatewayEvent>('hello.apigateway', helloApiGateway)
    ..invoke();
}
