import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:logger/logger.dart';

class ListUtil<T> {
  late IList<T> items;
  Logger logger = Logger();
  ListUtil() {
    items = <T>[].lock;
  }
  List<T> addOrReplaceItem(T item, {bool isReplace = false}) {
    final List<T> addNewItems = items.unlock;
    if (items.isEmpty) {
      addNewItems.add(item);
    } else {
      if (isReplace && items.length > 1) {
        addNewItems.removeLast();
      }
      addNewItems.add(item);
    }
    return addNewItems;
  }

  IList<T> addOrRenewList(List<T> datas, {int currentPage = 1}) {
    final List<T> addNewItems = items.unlock;
    logger.d('addOrRenewList ${items.length}');
    if (currentPage == 1) {
      addNewItems.clear();
    }
    addNewItems.addAll(datas);
    return addNewItems.lock;
  }
}
