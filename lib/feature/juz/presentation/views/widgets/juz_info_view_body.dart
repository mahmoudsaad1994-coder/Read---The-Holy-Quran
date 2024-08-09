import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:read_the_holy_quran/data.dart';
import '../../../../../core/widgets/custom_appbar.dart';
import '../../../../../core/widgets/font_size_slider.dart';
import '../../../../layout_view.dart/presentation/views/manager/app_cubit.dart';
import '../../../../layout_view.dart/presentation/views/manager/app_states.dart';
import 'ayah_text_widget.dart';
import 'title_card_juz_info.dart';

class JuzInfoViewBody extends StatelessWidget {
  const JuzInfoViewBody({super.key, required this.juzNumber});
  final int juzNumber;
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
                title: "الجزء ${numbArb[juzNumber - 1]}",
              ),
              body: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: size.width * .03,
                  ),
                  child: Column(
                    children: [
                      TitleCardJuzInfo(juzNumber: juzNumber),
                      const FontSizeSlider(),
                      ...List.generate(cubit.surahTextOfJuz.keys.length,
                          (index) {
                        return SurahTextWidget(
                          surahNumber:
                              cubit.surahTextOfJuz.keys.toList()[index],
                          cubit: cubit,
                          surahText:
                              cubit.surahTextOfJuz.values.toList()[index],
                        );
                      }),
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
