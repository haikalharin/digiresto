abstract class IDigiLocaleRepository {
  Future<String> getAppLocale();
  Future<void> setNewLocale({required String newLocale});
}
