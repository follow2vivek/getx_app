import 'dart:convert';
import 'package:get/get.dart';
import 'package:getx_app/http/request.dart';
import 'package:getx_app/http/url.dart';
import 'package:getx_app/model/user_list_model.dart';

class HomeController extends GetxController {
  var userListData = List<Data>().obs;
  @override
  void onInit() {
    _apiGetUserList();
    super.onInit();
  }

  void _apiGetUserList() async {
    Request request = Request(url: urlUserList, body: null);
    request.get().then((value) {
      UserListModel userListModel =
          UserListModel.fromJson(json.decode(value.body));
      userListData.value = userListModel.data;
    }).catchError((onError) {
      print(onError);
    });
  }

  void deleteItem(int index) {
    userListData.removeAt(index);
  }
}
