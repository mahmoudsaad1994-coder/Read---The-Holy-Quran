import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/quran.dart' as quran;

import '../../../../../core/widgets/font_size_slider.dart';
import '../../../../layout_view.dart/presentation/views/manager/app_cubit.dart';
import '../../../../layout_view.dart/presentation/views/manager/app_states.dart';
import 'ayah_text_widget.dart';
import '../../../../../core/widgets/custom_appbar.dart';
import 'title_card_surah_info.dart';

class SurahInfoViewBody extends StatelessWidget {
  const SurahInfoViewBody({super.key, required this.surahNumber});
  final int surahNumber;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        var size = MediaQuery.of(context).size;

        return SafeArea(
          child: Scaffold(
              appBar: appBar(
                context: context,
                title: "سورة ${quran.getSurahNameArabic(surahNumber)}",
              ),
              body: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: size.width * .03,
                  ),
                  child: Column(
                    children: [
                      TitleCardSurahInfo(surahNumber: surahNumber),
                      const FontSizeSlider(),
                      AyahTextWidget(
                        surahNumber: surahNumber,
                        cubit: cubit,
                      ),
                      SizedBox(height: size.height * .015),
                    ],
                  ),
                ),
              )),
        );
      },
    );
  }
}
