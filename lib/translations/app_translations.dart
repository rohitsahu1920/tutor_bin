import 'package:get/get.dart';


import 'languages/english.dart';
import 'languages/portuguese.dart';
import 'languages/spanish.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': EnglishLanguage.values,
        'es': SpanishLanguage.values,
        'pt': PortugueseLanguage.values,
      };
}
