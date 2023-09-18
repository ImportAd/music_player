import 'package:flutter/material.dart';
import 'package:peace_img/config/colors.dart';

// Переиспользуемый виджет, который выводит список композиций
// Поля: Название композиции, Имя исполнителя

// 1-я итерация: ToDo: должен передаваться словарь
// [название песни: имя артиста]
// 2-я итерация: ToDo: вся работа с компазициями осущуствляется через
// локальную базу данных.
// В которой 3 поля: Сама композиция. Название композиции. Имя автора.

class SongList extends StatelessWidget {
  final String songName;
  final String artistName;

  const SongList({required this.songName, required this.artistName, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 4),
      decoration: BoxDecoration(
        color: AppColors.backgroundallBlack,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(
          songName,
          style: const TextStyle(
            fontFamily: "bold",
            fontSize: 16,
            color: AppColors.white,
          ),
        ),
        subtitle: Text(
          artistName,
          style: const TextStyle(
            fontFamily: "regular",
            fontSize: 12,
            color: AppColors.white,
          ),
        ),
        leading: const Icon(
          Icons.music_note,
          color: AppColors.white,
          size: 32,
        ),
        trailing: const Icon(
          Icons.play_arrow,
          color: AppColors.white,
          size: 24,
        ),
        onTap: () {
          // Переход к самой композиции в плеере
        },
      ),
    );
  }
}
