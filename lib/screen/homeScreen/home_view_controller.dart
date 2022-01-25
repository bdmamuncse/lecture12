//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeViewController extends GetxController{

  var appName=''.obs;
  var username=''.obs;
  var userId=0.obs;
  var userBalance=0.0.obs;
  var userDataList=[].obs;
  var usernameController=TextEditingController();

  @override
  void onInit() {
     // appName.value='Home Screen';
     // username.value='bdmamuncse';
     // userId.value=00337;
     // userBalance.value=337.3;
      userDataList.value=[];
    //print('class: $runtimeType called oninit');
   // _changeMyData();
    super.onInit();
  }

  @override
  void dispose() {
     username.close();
     userId.close();
     userBalance.close();
     userDataList.close();
    print('class: $runtimeType called dispose');
    super.dispose();
  }

  void _changeMyData() async {
    await Future.delayed(const Duration(seconds: 3));
    //userDataList.value.add('New user added');
    appName.value='AppBar Dash Board';
    for(var i=0; i<=4; i++){
      await Future.delayed(const Duration(seconds: 1));
      userDataList.add('new user added $i');
    }

      }
  void callBottomSheet(){
    // Get.snackbar(
    //   'Snackbar message', 'data insertion',
    //   snackPosition: SnackPosition.BOTTOM,
    // );

    Get.bottomSheet(Container(
      //color: Colors.white70,
      height: 220,
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topLeft:Radius.circular(10),topRight:Radius.circular(10)) ,
      ),
      child: Column(
        children: [
          Container(
            height: 70,
            width: double.infinity,
            //color: Colors.amber,
            child: const Center(child: Text('Add User Name', style: TextStyle(fontSize: 18),)),
          ),
          Container(
            height: 70,
            width: double.infinity,
            //color: Colors.blueAccent,
            child: TextField(
              controller: usernameController,
              decoration: const InputDecoration(
                hintText: 'Enter User Name',
              ),
              onChanged: (v){

              },
            ),
          ),
          Container(
            height: 60,
            width: double.infinity,
            //color: Colors.orange,
            child: RaisedButton(onPressed: (){
              if(usernameController.text.length==0){

              }else{
                userDataList.add(usernameController.text);
                usernameController.clear();
                Get.back();
              }



            }, child: Text('Insert Now'),),
          ),
        ],
      ),
    ));

  }

}
