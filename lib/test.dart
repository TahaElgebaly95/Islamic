import 'package:flutter/material.dart';
import 'package:islamic_app/features/home_screen/view/widget/surah/surah_list.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Expanded(child: SurahList())
        ],
      ),
    );
  }
}
