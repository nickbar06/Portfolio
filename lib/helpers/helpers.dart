import 'package:flutter/material.dart';

enum ViewState { Idle, Busy }

class BaseModel extends ChangeNotifier {
  ViewState _state = ViewState.Idle;

  ViewState get state => _state;

  void setState(ViewState viewState) {
    _state = viewState;
    notifyListeners();
  }

  bool _pageLoaded = false;

  get pageLoaded => _pageLoaded;

  void setPageLoaded(bool value) {
    _pageLoaded = value;
  }
}
