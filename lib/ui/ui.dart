import 'package:course/controller/apiController.dart';
import 'package:course/models/getBusinessModelUI.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ApiController apiController = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: Text('API Post Example'),
      ),
      body: Center(
        child: FutureBuilder<List<GetBusinessModelUi>>(
          future: apiController.postData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator(); // Show loading indicator while data is being fetched
            } else if (snapshot.hasError) {
              return Text(
                  'Error: ${snapshot.error}'); // Show error message if request fails
            } else if (snapshot.hasData) {
              // Show data if request is successful
              List<GetBusinessModelUi> posts = snapshot.data!;
              return ElevatedButton(
                onPressed: () {
                  // Do something with the loaded data
                },
                child: Text('Data Loaded!'),
              );
            } else {
              return Text(
                  'No data available'); // Show message if no data is available
            }
          },
        ),
      ),
    );
  }
}
