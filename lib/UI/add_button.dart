import 'package:expense_manager/UI/add_personal_expense.dart';
import 'package:expense_manager/controller/list_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddButton extends StatefulWidget {
  const AddButton({Key? key}) : super(key: key);

  @override
  State<AddButton> createState() => _AddButtonState();
}

class _AddButtonState extends State<AddButton> {

  ListController listController = Get.put(ListController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Personal Expense:Up to...'),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.more_vert),
          )
        ],
      ),
      floatingActionButton: Align(
        alignment: Alignment.bottomCenter,
        child: SizedBox(
          height: 120,
          child: FloatingActionButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const AddPersonalExpense(),));
              },
              child: const Icon(Icons.add, size: 35,)
          ),
        ),
      ),

      body: ListView.builder(
        itemCount: listController.list1.length,
        itemBuilder: (context, index) {
        return Container(

          height: 70,
          child: ListTile(
            leading: Text(listController.list1[index]['_id'].toString()),
            title: Text(listController.list1[index]['amount'].toString()),
            subtitle: Text(listController.list1[index]['payee'].toString()),
            trailing: Text(listController.list1[index]['chequeno'].toString()),
          ),
        );
      },),
    );
  }
}
