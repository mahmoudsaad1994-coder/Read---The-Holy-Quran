import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/quran.dart' as quran;
import 'package:google_fonts/google_fonts.dart';

import '../manager/app_cubit.dart';
import '../manager/app_states.dart';
import 'home_appbar.dart';

class SurahInfoViewBody extends StatelessWidget {
  const SurahInfoViewBody({super.key, required this.suraName});
  final String suraName;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        var size = MediaQuery.of(context).size;
        return Scaffold(
          appBar: appBar(
            context: context,
            cubit: cubit,
            title: suraName,
          ),
          body: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * .03, vertical: size.height * .01),
              child: ListView.builder(
                itemCount: quran.getVerseCount(114),
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      quran.getVerse(114, index + 1, verseEndSymbol: true),
                      textAlign: TextAlign.right,
                      style: GoogleFonts.amiriQuran(
                        fontSize: MediaQuery.of(context).size.height * .03,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
