import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:toggle_switch/toggle_switch.dart';

List<String> list1 = <String>['Personal Expense', 'Second'];

class AddPersonalExpense extends StatefulWidget {
  const AddPersonalExpense({Key? key}) : super(key: key);

  @override
  State<AddPersonalExpense> createState() => _AddPersonalExpenseState();
}

class _AddPersonalExpenseState extends State<AddPersonalExpense> {
  TextEditingController timeController = TextEditingController();
  String dropdownValue = list1.first;
  String type = "Income";

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ToggleSwitch(
                    initialLabelIndex: 0,
                    totalSwitches: 2,
                    activeBgColor: const [Colors.teal],
                    inactiveBgColor: Colors.white,
                    inactiveFgColor: Colors.teal,
                    borderColor: const [Colors.teal],
                    borderWidth: 1.5,
                    fontSize: 13,
                    labels: const ['Expense', 'Income'],
                    onToggle: (index) {
                      /* if(index == 1){

                      }
                      else{

                      }*/
                    },
                  ),
                ),

                // Time
                Text(
                  DateFormat(' yyyy/mm/dd  hh:mm').format(DateTime.now()),
                  style: const TextStyle(color: Colors.red),
                ),
              ],
            ),

            ListTile(
              leading: const Text('Amount ', style: TextStyle(fontSize: 18)),
              title: TextFormField(
                keyboardType: TextInputType.number,
                cursorHeight: 25,
              ),
              trailing: const CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Icon(
                    Icons.calculate,
                    color: Colors.white,
                  )),
            ),

            ListTile(
              leading: const Text('Payee    ', style: TextStyle(fontSize: 18)),
              title: TextFormField(
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
              leading: Text('Category  ', style: TextStyle(fontSize: 18)),
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
              leading: Text('Payment\nMethod     ', style: TextStyle(fontSize: 18)),
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
              leading: Text('Payment  ', style: TextStyle(fontSize: 18)),
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
              leading: const Text('Description ', style: TextStyle(fontSize: 18)),
              title: TextFormField(
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
            Row(
              children: [
                const SizedBox(
                  width: 110,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed: () {}, child: const Text('Back')),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed: () {}, child: const Text('New')),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
