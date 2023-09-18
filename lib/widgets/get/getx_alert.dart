import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxAlert extends StatelessWidget {
  const GetxAlert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          textStyle: const TextStyle(fontSize: 18),
        ),
        onPressed: () {
          Get.defaultDialog(
              title: 'GetX Alert',
              middleText: 'Simple GetX alert',
              textConfirm: 'Okay',
              confirmTextColor: Colors.white,
              textCancel: 'Cancel');
        },
        child: const Text('Show AlertDialog'));
  }
}
