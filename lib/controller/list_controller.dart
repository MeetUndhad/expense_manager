import 'package:expense_manager/helper/databade_helper.dart';
import 'package:get/get.dart';

class ListController extends GetxController{
  final dbHelper = DatabaseHelper.instance;
  var list1 = [];
  getAllDataFromDatabase() async {
    await dbHelper.queryAllRows().then((value) {
      print("value :: $value");
      list1.addAll(value);
    });
    update();
  }
}