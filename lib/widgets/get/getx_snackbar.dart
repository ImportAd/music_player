import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxSnackbar extends StatelessWidget {
  const GetxSnackbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        textStyle: const TextStyle(fontSize: 18),
      ),
      onPressed: () {
        Get.snackbar("GetX снэк бар", "снэк бар снэк бар снэк бар",
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.tealAccent);
      },
      child: const Text("Показать снэк бар"),
    );
  }
}
