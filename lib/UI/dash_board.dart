import 'package:expense_manager/UI/All.dart';
import 'package:expense_manager/UI/account.dart';
import 'package:expense_manager/UI/add_personal_expense.dart';
import 'package:expense_manager/UI/personal_expense.dart';
import 'package:expense_manager/Utils/AppString.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {

@override
Widget build(BuildContext context) {
  return DefaultTabController(
    length: 2,
    child: Scaffold(
      drawer: mainDrawer(),
      appBar: AppBar(
        title: const Text('Personal Expense'),
        actions: [
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Account(),));
              } ,
                child: Icon(Icons.menu)),
          )
        ],
        bottom: const TabBar(
          tabs: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('PERSONAL EXPENSE', style: TextStyle(fontSize: 15)),
            ),
            Padding(padding: EdgeInsets.all(10.0), child: Text('ALL', style: TextStyle(fontSize: 15))),
          ],
        ),
      ),
      body: const TabBarView(
        children: [PersonalExpense(), All()],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const AddPersonalExpense(),));
        },
        child: const Icon(Icons.add, size: 30),
      ),
    ),
  );
}}

Widget mainDrawer() {
  return Drawer(
    child: Column(
      children: [
        Container(
          height: 225,
          decoration: BoxDecoration(
              color: Colors.blue,
              image: const DecorationImage(
                image: AssetImage("assets/image/img_1.png"),
                fit: BoxFit.cover,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: const Offset(0, 3),
                ),
              ]),
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 8.0),
          alignment: Alignment.bottomRight,
          child: const Text(
            "Expense Manager ",
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: AppString.list2.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 13,
                  child: Icon(AppString.list2[index]['icon'], color: Colors.teal,),
                ),
                title: Text(AppString.list2[index]['text'].toString(),
                  style: const TextStyle(fontSize: 15),
                ),
              );
            },
          ),
        ),
      ],
    ),
  );
}
