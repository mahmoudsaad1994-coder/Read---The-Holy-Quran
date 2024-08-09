import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quran/quran.dart' as quran;

import '../../../../../constans.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/functions/revelation_type.dart';
import '../../../../layout_view.dart/presentation/views/manager/app_cubit.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({super.key, required this.surahNumber});
  final int surahNumber;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return ListTile(
          onTap: () {
            GoRouter.of(context).push(
              AppRouter.kSurahInfoView,
              extra: surahNumber,
            );
          },
          title: Text(
            "سورة ${quran.getSurahNameArabic(surahNumber)}",
            style: TextStyle(
              color: AppCubit.get(context).isdark ? Colors.white : k863ED5,
              fontWeight: FontWeight.bold,
              fontSize: constraints.maxWidth * .045,
            ),
          ),
          leading: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                AssetsData.ayahIcon,
                height: constraints.maxWidth * .1,
              ),
              Text(
                '$surahNumber',
                style: TextStyle(
                  color: k863ED5,
                  fontWeight: FontWeight.bold,
                  fontSize: constraints.maxWidth * .036,
                ),
              ),
            ],
          ),
          subtitle: Row(
            children: [
              Text(
                getRevelationType(quran.getPlaceOfRevelation(surahNumber)),
                style: TextStyle(
                  color: k8789A3,
                  fontSize: constraints.maxWidth * .04,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: constraints.maxWidth * .02),
              Text(
                'عدد الآيات : ${quran.getVerseCount(surahNumber)}',
                style: TextStyle(
                  color: k8789A3,
                  fontSize: constraints.maxWidth * .04,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          contentPadding: EdgeInsets.zero,
        );
      },
    );
  }
}
