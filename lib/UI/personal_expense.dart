import 'package:expense_manager/Utils/AppString.dart';
import 'package:flutter/material.dart';

class PersonalExpense extends StatefulWidget {
  const PersonalExpense({Key? key}) : super(key: key);

  @override
  State<PersonalExpense> createState() => _PersonalExpenseState();
}

class _PersonalExpenseState extends State<PersonalExpense> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 100,
              child: Column(
                children: [
                  Expanded(
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, childAspectRatio: 1/0.40),
                      itemCount: AppString.list1.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.zero),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white,
                                spreadRadius: 5
                              )
                            ]
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Center(
                                      child: TextButton(
                                          onPressed: () {}, child: Text(AppString.list1[index]['button'].toString(), textAlign: TextAlign.center, style: TextStyle(color: Colors.teal),))),
                                ],
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: GestureDetector(
              onTap: (){},
              child: Container(
                height: 50,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.zero),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white,
                          spreadRadius: 5
                      )
                    ]
                ),
                child: const ListTile(
                  leading: Text('Current Balance'),
                  trailing: Text('0.00', style: TextStyle(color: Colors.green)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
