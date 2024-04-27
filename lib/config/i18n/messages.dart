import 'package:get/get.dart';
import 'package:state_app/config/i18n/langs/en_us.dart';
import 'package:state_app/config/i18n/langs/es_es.dart';
import 'package:state_app/config/i18n/langs/fr_fr.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': en_US,
        'es_ES': es_ES,
        'fr_FR': fr_FR,
      };
  //   'en_US': {
  //     'hello-world': 'Hello World',
  //     'change-language': 'Change language',
  //   },
  //   'es_ES': {
  //     'hello-world': 'Hola Mundo',
  //     'change-language': 'Cambiar idioma',
  //   }
  // };
}
