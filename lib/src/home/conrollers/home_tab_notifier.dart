import 'package:flutter/material.dart';
import 'package:mobile_shop/common/utils/enums.dart';

class HomeTabNotifier with ChangeNotifier {
  QueryType queryType = QueryType.all;

  String _index = 'All';

  String get index => _index;

  void setIndex(String index) {
    _index = index;

    switch (index) {
      case 'All':
        setQueryType(QueryType.all);
        break;
      case 'Samsung':
        setQueryType(QueryType.samsung);
        break;
      case 'Apple':
        setQueryType(QueryType.apple);
        break;
      case 'Huawei':
        setQueryType(QueryType.huawei);
        break;
      case 'Xiaomi':
        setQueryType(QueryType.xiaomi);
        break;
      case 'Tecno':
        setQueryType(QueryType.tecno);
        break;
      case 'Infinix':
        setQueryType(QueryType.infinix);
        break;
      case 'Itel':
        setQueryType(QueryType.itel);
        break;
      case 'Tablettes enfants':
        setQueryType(QueryType.tablettes);
        break;
      case 'Accessoires':
        setQueryType(QueryType.accessoires);
        break;
      default:
        setQueryType(QueryType.all);
        break;
    }

    notifyListeners();
  }

  void setQueryType(QueryType q) {
    queryType = q;
    notifyListeners();
  }
}
