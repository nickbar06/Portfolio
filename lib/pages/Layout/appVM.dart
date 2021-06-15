import 'package:Portfolio/helpers/helpers.dart';

class AppVM extends BaseModel {
  int _currentPage = 0;
  int _currentPic = 0;

  set setPage(int val) {
    _currentPage = val;
    notifyListeners();
  }

  set setPic(int index) {
    _currentPic = index;
    notifyListeners();
  }

  int get getPage => _currentPage;
  int get getPic => _currentPic;
}
