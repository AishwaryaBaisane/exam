import 'package:exam/Controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(ContactController1());
    return Scaffold(
      appBar: AppBar(
        title: Text('Expense Data'),
      ),
      body: ListView.builder(
        itemCount: controller.data.length,
        itemBuilder: (context, index) =>  ListTile(
          onLongPress: () {
            controller.deleteData(index);
          },
          title: Text(controller.data[index]),
          subtitle: Text(controller.data[index]),
          trailing: Text(controller.data[index]),
        ),)
    );
  }
}
