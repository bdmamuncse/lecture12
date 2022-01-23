
import 'package:get/get.dart';

class HomeViewController extends GetxController{

  var appName=''.obs;
  var username=''.obs;
  var userId=0.obs;
  var userBalance=0.0.obs;
  var userDataList=[].obs;

  @override
  void onInit() {
     appName.value='Home Screen';
     username.value='bdmamuncse';
     userId.value=00337;
     userBalance.value=337.3;
     userDataList.value=['sazzad1','sazzad2','sazzad3'];
    print('class: $runtimeType called oninit');
    _changeMyData();
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
    for(var i=0; i<=10; i++){
      await Future.delayed(const Duration(seconds: 1));
      userDataList.add('new user added $i');
    }
  }

}
