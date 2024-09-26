import 'package:flutter/cupertino.dart';
import 'package:islamic_app/features/intro_screen/view/widgets/choose_language.dart';
import 'package:islamic_app/features/intro_screen/view/widgets/description_text.dart';
import 'package:islamic_app/features/intro_screen/view/widgets/logo.dart';
import 'package:islamic_app/features/intro_screen/view/widgets/main_container.dart';
import 'package:islamic_app/features/intro_screen/view/widgets/title_text.dart';

class PageViewItem extends StatelessWidget {
  PageViewItem(
      {super.key,
      required this.logoPhoto,
      this.titleText = '',
      this.description = '',
      this.chooseLanguageWord,
      this.englishWord,
      this.arabicWord});

  final String logoPhoto;
  final String titleText;
  final String description;

  String? chooseLanguageWord;
  String? englishWord;
  String? arabicWord;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return PageView(
      children: [
        MainContainer(
          child: Column(
            children: [
              LogoPhoto(logoPhoto: logoPhoto),
              Visibility(
                visible: titleText.isNotEmpty,
                child: TitleText(titleText: titleText),
              ),
              SizedBox(height: height * 0.02),
              Visibility(
                visible: description.isNotEmpty,
                child: DescriptionText(description: description),
              ),
              SizedBox(height: height * 0.04),
              Visibility(
                child: ChooseLanguage(
                    chooseLanguageWord: chooseLanguageWord,
                    englishWord: englishWord,
                    arabicWord: arabicWord),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
