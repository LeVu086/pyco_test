// GENERATED CODE - DO NOT MODIFY BY HAND

part of user_api;

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$UserAPI extends UserAPI {
  _$UserAPI([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = UserAPI;

  @override
  Future<Response<Result>> getRandomUser() {
    final $url = 'api/0.4';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<Result, Result>($request);
  }
}
