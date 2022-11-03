class ApiServices {
  String endpoint = "https://kwilox.herokuapp.com/api/v1/fetch-items";
  Future<http.Response?> postRegister(UserSignUp data) async {
    http.Response? postRegisterResponse;
    var url = Uri.parse("https://kwilox.herokuapp.com/api/v1/register-user");
    Map<String, String> requestHeaders = {
      "Content-type": "application/json",
      "Accept": "*/*"
    };

    try {
      postRegisterResponse = await http.post(url,
          headers: requestHeaders, body: jsonEncode(data.toJson()));
      if (KDebugMode) {
        print("Response status: ${postRegisterResponse.statusCode}");
        print("Response body: ${postRegisterResponse.body}");
      }
      var responseData = jsonDecode(postRegisterResponse.body);
      if (kDebugMode) {
        print(responseData);
      }
    } catch (e, s) {
      if (kDebugMode) {
        print(e);
        print(s);
      }
    }
    return postRegisterResponse;
  }

  Future<List<FetchItems>> getUsers() async {
    http.Response response = await http.get(Uri.parse(endpoint));
    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body)["fetchItems"];
      return result.map(((e) => FetchItems.fromJson(e))).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}
