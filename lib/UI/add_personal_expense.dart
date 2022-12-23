import 'package:expense_manager/controller/list_controller.dart';
import 'package:expense_manager/helper/databade_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:toggle_switch/toggle_switch.dart';

List<String> list1 = <String>['Personal Expense', 'Second'];

class AddPersonalExpense extends StatefulWidget {
  const AddPersonalExpense({Key? key}) : super(key: key);

  @override
  State<AddPersonalExpense> createState() => _AddPersonalExpenseState();
}

class _AddPersonalExpenseState extends State<AddPersonalExpense> {

  final amountcontroller = TextEditingController();
  final payeecontroller = TextEditingController();
  final chequecontroller = TextEditingController();
  final descriptioncontroller = TextEditingController();
  final dbHelper = DatabaseHelper.instance;

  TextEditingController timeController = TextEditingController();
  String dropdownValue = list1.first;
  String type = "Income";

  late TimeOfDay time;
  late TimeOfDay picked;
  late DateTime  newDate;
  late DateTime  date;
  // DateTime date = DateTime.now();/

  @override
  void initState() {
    time = TimeOfDay.now();
    date = DateTime.now();
    super.initState();
  }

  Future selecttime (BuildContext context) async{
    picked = (await showTimePicker(

        context: context,
        initialTime: time))!;

    setState(() {
      time = picked;
    });
  }

  Future showdatepicker (BuildContext context) async{
    DateTime? newDate = (await showDatePicker(
        context: context,
        initialDate: date,
        firstDate: DateTime(2000),
        lastDate: DateTime(2025),
    ))!;
    setState(() {
      date = newDate;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: DropdownButton(
          value: dropdownValue,
          elevation: 2,
          style: const TextStyle(color: Colors.black),
          underline: Container(
            color: Colors.blueAccent,
          ),
          onChanged: (String? value) {
            setState(() {
              dropdownValue = value!;
            });
          },
          items: list1.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem(
              value: value,
              child: Text(
                value,
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            );
          }).toList(),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.check),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.more_vert),
          )
        ],
      ),
      body: GetBuilder(
        builder: (ListController controller){
          return SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ToggleSwitch(
                        initialLabelIndex: 0,
                        cornerRadius: 12,
                        totalSwitches: 2,
                        activeBgColor: const [Colors.teal],
                        inactiveBgColor: Colors.white,
                        inactiveFgColor: Colors.teal,
                        borderColor: const [Colors.teal],
                        borderWidth: 1.5,
                        fontSize: 13,
                        labels: const ['Expense', 'Income'],
                        onToggle: (index) {
                          // if(index == 1){
                          //
                          // }
                          // else{
                          //
                          // }
                        },
                      ),
                    ),

                    const SizedBox(width: 20,),
                    // Time

                    MaterialButton(
                      child:Text('${date.year}-${date.month}-${date.day}',
                          style: const TextStyle(fontSize: 15,color: Colors.red,
                            decoration: TextDecoration.underline,)),
                      onPressed: () {
                        showdatepicker(context);
                      },),


                    MaterialButton(
                      child:Text('${time.hour}:${time.minute}',
                          style: const TextStyle(fontSize: 15,color: Colors.red,
                            decoration: TextDecoration.underline,)),
                      onPressed: () {
                        selecttime(context);
                      },
                    ),

                    /*Text(
                    DateFormat('HH : MM').format(DateTime.now()),
                    style: const TextStyle(color: Colors.red),
                  ),*/
                  ],
                ),

                ListTile(
                  leading: const Text('Amount', style: TextStyle(fontSize: 18)),
                  title: TextFormField(
                    controller: amountcontroller,
                    cursorColor: Colors.teal,
                    decoration: const InputDecoration(focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.teal))),
                    keyboardType: TextInputType.number,
                    cursorHeight: 25,
                  ),
                  trailing: CircleAvatar(
                      backgroundColor: Colors.blue,
                      child: GestureDetector(
                        onTap: (){

                        },
                        child: const Icon(
                          Icons.calculate,
                          color: Colors.white,
                        ),
                      )),
                ),

                ListTile(
                  leading: const Text('Payee   ', style: TextStyle(fontSize: 18)),
                  title: TextFormField(
                    controller: payeecontroller,
                    keyboardType: TextInputType.number,
                    cursorColor: Colors.teal,
                    decoration: const InputDecoration(focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.teal))),
                    cursorHeight: 25,
                  ),
                  trailing: const CircleAvatar(
                      backgroundColor: Colors.red,
                      child: Icon(
                        Icons.clean_hands,
                        color: Colors.white,
                      )),
                ),

                const ListTile(
                  leading: Text('Category', style: TextStyle(fontSize: 18)),
                  title: Text(
                    'Uncategorized',
                    style: TextStyle(color: Colors.red, fontSize: 15),
                  ),
                  trailing: CircleAvatar(
                      backgroundColor: Colors.teal,
                      child: Icon(
                        Icons.library_books_rounded,
                        color: Colors.white,
                      )),
                ),
                const ListTile(
                  leading: Text('Payment\nMethod', style: TextStyle(fontSize: 18)),
                  title: Text(
                    'Cash',
                    style: TextStyle(color: Colors.red, fontSize: 15),
                  ),
                  trailing: CircleAvatar(
                      backgroundColor: Colors.orangeAccent,
                      child: Icon(
                        Icons.cases_sharp,
                        color: Colors.white,
                      )),
                ),

                const ListTile(
                  leading: Text('Payment', style: TextStyle(fontSize: 18)),
                  title: Text(
                    'Cleared',
                    style: TextStyle(color: Colors.red, fontSize: 15),
                  ),
                  trailing:CircleAvatar(
                      backgroundColor: Colors.green,
                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                      )),
                ),

                ListTile(
                  leading: const Text('Ref./Cheque No', style: TextStyle(fontSize: 18)),
                  title: TextFormField(
                    controller: chequecontroller,
                    keyboardType: TextInputType.number,
                    cursorColor: Colors.teal,
                    decoration: const InputDecoration(focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.teal))),
                    cursorHeight: 25,
                  ),
                  trailing: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Print Cheque',
                        style: TextStyle(color: Colors.teal),
                      )),
                ),

                ListTile(
                  leading: const Text('Description', style: TextStyle(fontSize: 18)),
                  title: TextFormField(
                    controller: descriptioncontroller,
                    cursorColor: Colors.teal,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.teal))),
                    cursorHeight: 25,
                  ),
                  trailing: TextButton(
                    onPressed: () {},
                    child: const Icon(Icons.camera_alt),
                  ),
                ),

                const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      '     More...',
                      style: TextStyle(color: Colors.teal),
                    )),
                ListView.builder(
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        const SizedBox(
                          width: 110,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(onPressed: () {}, child: const Text('Ok & New')),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(onPressed: () {
                            amountcontroller.text = controller.list1[index]['amount'];
                            payeecontroller.text = controller.list1[index]['payee'];
                            chequecontroller.text = controller.list1[index]['chequeno'];
                            // descriptioncontroller.text = controller.list1[index]['description'];
                          }, child: const Text('Ok')),
                        ),
                      ],
                    );
                  },
                )
              ],
            ),
          );
        }
      ),
    );
  }
}


