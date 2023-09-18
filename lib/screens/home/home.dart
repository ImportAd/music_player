import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:peace_img/widgets/song_list.dart';
import 'package:peace_img/screens/player/player_controller.dart';
import 'package:peace_img/widgets/my_search_delegate.dart';
import 'package:peace_img/config/colors.dart';

// Начальная страница приложения
// Отображает список всех композиций

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundBlack,
        appBar: AppBar(
            //Appbar НАЧАЛО
            backgroundColor: AppColors.backgroundBlack,
            elevation: 0,
            actions: [
              // Иконка поиска
              IconButton(
                  onPressed: () {
                    showSearch(context: context, delegate: MySearchDelegate());
                  }, // Перенаправление в файл my_search_delegate.dart
                  // Класс MySearchDelegate реализует страницу поиска
                  // С предложением последних прослушиваемых треков
                  icon: const Icon(
                    Icons.search,
                    color: AppColors.white,
                  ))
            ],
            // Иконка меню
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.sort_rounded,
                color: AppColors.white,
              ),
            ),
            // Заголовок страницы
            title: const Center(
                child: Text("Peace Img",
                    style: TextStyle(
                      fontSize: 18,
                      color: AppColors.white,
                      fontFamily: "bold",
                    )))), //Appbar КОНЕЦ
        body: Padding(
            // Основная часть экрана
            padding: const EdgeInsets.all(8.0), // Отступы
            child: ListView.builder(
                // Генератор списка терков
                itemCount: 100, // Колличество виджетов
                physics: const BouncingScrollPhysics(), // Физика как в айфоне)
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {}, // При нажатии перебрасывает на экран плеера
                    onLongPress:
                        () {}, //При долгом нажатии открывает доп функции
                    // Кастомный виджет одной композиции
                    child: const SongList(
                        // Создает карточку с указанными низванием песни и автора
                        songName: "music",
                        artistName: "artistName"),
                  );
                })));
  }
}
