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
            padding: const EdgeInsets.all(7.0),
            child: SizedBox(
              height: 100,
              child: Column(
                children: [
                  Expanded(
                    child: GridView.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3, childAspectRatio: 1 / 0.40),
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: AppString.list1.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.zero),
                              boxShadow: [BoxShadow(color: Colors.white, spreadRadius: 5)]),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            padding: const EdgeInsets.all(11.0),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                height: 50,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.zero),
                    boxShadow: [BoxShadow(color: Colors.white, spreadRadius: 5)]),
                child: const ListTile(
                  leading: Text('Current Balance'),
                  trailing: Text('0.00', style: TextStyle(color: Colors.green)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(11.0),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                height: 50,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.zero),
                    boxShadow: [BoxShadow(color: Colors.white, spreadRadius: 5)]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: const [
                      Text('Today'),
                      Text(
                        '3211',
                        style: TextStyle(fontSize: 15),
                      ),
                      Text('Activity', style: TextStyle(color: Colors.green))
                    ]),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: const [
                      Text(
                        '0.00',
                        style: TextStyle(color: Colors.redAccent),
                      ),
                      Text('0.00', style: TextStyle(color: Colors.redAccent)),
                      Text('0.00', style: TextStyle(color: Colors.redAccent))
                    ]),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(11.0),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                height: 50,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.zero),
                    boxShadow: [BoxShadow(color: Colors.white, spreadRadius: 5)]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: const [
                      Text('This Month'),
                      Text(
                        '3211',
                        style: TextStyle(fontSize: 15),
                      ),
                      Text('Activity', style: TextStyle(color: Colors.green))
                    ]),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: const [
                      Text(
                        '0.00',
                        style: TextStyle(color: Colors.redAccent),
                      ),
                      Text('0.00', style: TextStyle(color: Colors.redAccent)),
                      Text('0.00', style: TextStyle(color: Colors.redAccent))
                    ]),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(11.0),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                height: 50,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.zero),
                    boxShadow: [BoxShadow(color: Colors.white, spreadRadius: 5)]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: const [
                      Text('Year to Date'),
                      Text(
                        '3211',
                        style: TextStyle(fontSize: 15),
                      ),
                      Text('Activity', style: TextStyle(color: Colors.green))
                    ]),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: const [
                      Text(
                        '0.00',
                        style: TextStyle(color: Colors.redAccent),
                      ),
                      Text('0.00', style: TextStyle(color: Colors.redAccent)),
                      Text('0.00', style: TextStyle(color: Colors.redAccent))
                    ]),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(11.0),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                height: 250,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.zero),
                    boxShadow: [BoxShadow(color: Colors.white, spreadRadius: 5)]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: const [
                      Text('5531354'),
                    ]),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
