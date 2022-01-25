import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:lecture12/screen/homeScreen/home_view_controller.dart';


class HomeView extends StatelessWidget {
  //const HomeView({Key? key}) : super(key: key);

  // HomeViewController _controller=HomeViewController();
  final HomeViewController _controller = Get.put(HomeViewController()) ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text('${_controller.userDataList.length}')),
        actions: [
          IconButton(onPressed: (){
            _controller.callBottomSheet();
          }, icon: Icon(Icons.add) ),
        ],
      ),
      drawer: const Drawer(),
      body: Container(
        child: Obx(()=>ListView.builder(
          itemCount: _controller.userDataList.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(_controller.userDataList[index].toString()),
          ),)),
      ),
    );
  }
}
