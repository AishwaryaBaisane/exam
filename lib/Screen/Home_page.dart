import 'package:exam/Controller/controller.dart';
import 'package:exam/Controller/firebaseController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'datail page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var data = Get.put(ContactController1());
    return Scaffold(
      appBar: AppBar(
        title: Text('Expense Tracker App'),
      ),
      body: Column(
        children: [
          buildTextField(txtAmount, 'amount'),
          buildTextField(txtDate, 'date'),
          buildTextField(txtFood, 'food'),
          buildTextField(txtTitle, 'title'),
          buildTextField(txtTransport, 'transport'),
          TextButton(
              onPressed: () {
                String transport = txtTransport.text;
                String food = txtFood.text;
                String date = txtDate.text;
                String amount = txtAmount.text;
                String title = txtTitle.text;
                data.insertData(title, amount, date, food, transport);
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => DetailScreen(),
                ));
              },
              child: Text('Save'))
        ],
      ),
    );
  }

  Widget buildTextField(TextEditingController controller, String name) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: name,
          enabledBorder: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(),
        ),
      ),
    );
  }
}
