import 'dart:convert';

import 'package:course/models/getBusinessModelUI.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:http/http.dart' as http;

class ApiController extends GetxController {
  Future<List<GetBusinessModelUi>> postData() async {
    var client = http.Client();
    List<GetBusinessModelUi> posts = [];
    try {
      var response = await client.get(Uri.parse(
          'https://getlearn-admin.getbuildfirst.com/api/course/details/1'));
      Map<String, dynamic> jsonResponse = jsonDecode(response.body);
      print(jsonResponse['data']);
      var post = GetBusinessModelUi.fromJson(jsonResponse);
      posts.add(post);
      return posts;
    } catch (e) {
      print('Error: ${e.toString()}');
      return [];
    }
  }
}
