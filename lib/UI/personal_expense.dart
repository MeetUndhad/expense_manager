import 'package:expense_manager/UI/add_button.dart';
import 'package:expense_manager/Utils/AppString.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class PersonalExpense extends StatefulWidget {
  const PersonalExpense({Key? key}) : super(key: key);

  @override
  State<PersonalExpense> createState() => _PersonalExpenseState();
}

class _PersonalExpenseState extends State<PersonalExpense> {

  int _value = 1;
  late List<GDPData> chartData;

  void initstate() {
    // chartData = getChartData();
    super.initState();
  }

  List<GDPData> getChartData() {
    final List<GDPData> chartData = [
      GDPData('month', 1200),
      GDPData('month', 1200),
      GDPData('month', 1200),
      GDPData('month', 1200),
      GDPData('month', 1200),
    ];
    return chartData;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Column(
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
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Center(
                                        child: TextButton(
                                            onPressed: () {},
                                            child: Text(
                                              AppString.list1[index]['button'].toString(),
                                              textAlign: TextAlign.center,
                                              style: TextStyle(color: Colors.teal),
                                            ))),
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
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AddButton(),
                      ));
                },
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            '0.00',
                            style: TextStyle(color: Colors.redAccent),
                          ),
                          Text('0.00', style: TextStyle(color: Colors.redAccent)),
                          Text('0.00', style: TextStyle(color: Colors.redAccent))
                        ],
                      ),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('This Month'),
                          Text(
                            '3211',
                            style: TextStyle(fontSize: 15),
                          ),
                          Text('Activity', style: TextStyle(color: Colors.green))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            '0.00',
                            style: TextStyle(color: Colors.redAccent),
                          ),
                          Text('0.00', style: TextStyle(color: Colors.redAccent)),
                          Text('0.00', style: TextStyle(color: Colors.redAccent))
                        ],
                      ),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('Year to Date'),
                          Text(
                            '3211',
                            style: TextStyle(fontSize: 15),
                          ),
                          Text('Activity', style: TextStyle(color: Colors.green))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            '0.00',
                            style: TextStyle(color: Colors.redAccent),
                          ),
                          Text('0.00', style: TextStyle(color: Colors.redAccent)),
                          Text('0.00', style: TextStyle(color: Colors.redAccent))
                        ],
                      ),
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
                  height: MediaQuery.of(context).size.height * 0.42,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.zero),
                      boxShadow: [BoxShadow(color: Colors.white, spreadRadius: 5)]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Text('5531354'),
                          const SizedBox(width: 110),
                          Radio(value: 1,groupValue: _value, onChanged: (value) {
                            setState(() {
                              _value = value!;
                            });
                          }),
                          const Text('expense'),
                          Radio(value: 2,groupValue: _value, onChanged: (value) {
                            setState(() {
                              _value = value!;
                            });
                          }),
                          Text('income'),
                        ],
                      ),

                      SfCartesianChart(
                        series: <ChartSeries>[
                          // ignore: avoid_types_as_parameter_names
                          BarSeries(dataSource: [], xValueMapper: (datum, int index) { }, yValueMapper: (datum, int index) {  }
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
