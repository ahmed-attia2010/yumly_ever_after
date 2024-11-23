import 'package:get_it/get_it.dart';
//----------------------------------
import 'package:yumly_ever_after/src/core/utils/navigation/sailor.dart';
//----------------------------------------------------------------------

Future<void> initInjections() async {
  GetIt.instance.registerSingleton<ISailor>(Sailor());
}
