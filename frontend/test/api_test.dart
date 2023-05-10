import 'package:flowing_data/generated/api.pbgrpc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:grpc/grpc.dart';

Future<void> main() async {
  test("get tree", () async {
    final channel = ClientChannel(
      'localhost',
      port: 8113,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );
    final stub = TreeApiClient(channel);

    final request = GetTreeRequest(root: '@root');
    final response = await stub.getTree(request);

    expect(request.root, equals(response.root.id));

    expect(response.root.children, hasLength(1));

    await channel.shutdown();
  });
}
