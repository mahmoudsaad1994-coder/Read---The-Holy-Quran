import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quran/quran.dart' as quran;

import '../../../../../constans.dart';
import '../../../../layout_view.dart/presentation/views/manager/app_cubit.dart';

class SurahTextWidget extends StatelessWidget {
  const SurahTextWidget({
    super.key,
    required this.surahNumber,
    required this.cubit,
    required this.surahText,
  });
  final int surahNumber;
  final AppCubit cubit;
  final String surahText;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: size.width * .02, vertical: size.height * .02),
        color: cubit.isdark ? k672CBC.withOpacity(.8) : k9055FF.withOpacity(.4),
        child: Column(
          children: [
            Center(
              child: Text(
                "سورة ${quran.getSurahNameArabic(surahNumber)}",
                style: GoogleFonts.amiri(
                  fontSize: cubit.fontSize,
                  color: cubit.isdark ? Colors.white : k672CBC,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: size.width * .06),
              child: Divider(
                endIndent: size.width * .2,
                indent: size.width * .2,
                color: cubit.isdark ? Colors.white : k9055FF,
              ),
            ),
            Text(
              surahText,
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
          ],
        ),
      ),
    );
  }
}
