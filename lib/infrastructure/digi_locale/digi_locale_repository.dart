import 'package:digiresto/domain/core/interfaces/i_storage.dart';
import 'package:digiresto/domain/digi_locale/i_digi_locale_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IDigiLocaleRepository)
class DigiLocaleRepository implements IDigiLocaleRepository {
  final IStorage _storage;
  const DigiLocaleRepository(this._storage);

  @override
  Future<String> getAppLocale() async {
    try {
      await _storage.openBox(StorageConstants.locale);
      String? locale = _storage.getString(key: 'locale');
      print('locale $locale');
      if (locale == null) {
        return 'en_US';
      }
      await _storage.close();
      return locale;
    } catch (e) {
      return 'en_US';
    }
  }

  @override
  Future<void> setNewLocale({required String newLocale}) async {
    await _storage.openBox(StorageConstants.locale);
    await _storage.putString(key: 'locale', value: newLocale);
    await _storage.close();
    return;
  }
}
