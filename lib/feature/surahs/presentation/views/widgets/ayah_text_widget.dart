import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quran/quran.dart' as quran;

import '../../../../../constans.dart';
import '../../../../../core/utils/functions/list_to_string.dart';
import '../../../../layout_view.dart/presentation/views/manager/app_cubit.dart';

class AyahTextWidget extends StatelessWidget {
  const AyahTextWidget(
      {super.key, required this.surahNumber, required this.cubit});
  final int surahNumber;
  final AppCubit cubit;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: size.width * .02, vertical: size.height * .02),
        color: cubit.isdark ? k672CBC.withOpacity(.8) : k9055FF.withOpacity(.4),
        child: Text(
          listToString(List.generate(quran.getVerseCount(surahNumber), (index) {
            return quran.getVerse(surahNumber, index + 1, verseEndSymbol: true);
          })),
          textAlign: TextAlign.right,
          style: cubit.isdark
              ? GoogleFonts.amiri(
                  fontSize: cubit.fontSize,
                  color: Colors.white,
                )
              : GoogleFonts.amiriQuran().copyWith(
                  fontSize: cubit.fontSize,
                  color: k1D2233,
                ),
        ),
      ),
    );
  }
}
