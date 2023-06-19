import 'dart:async';
import 'package:tuts/domain/models.dart';
import 'package:tuts/presentation/base/baseviewmodel.dart';
import '../../resources/assets_manager.dart';
import '../../resources/strings_manager.dart';

class OnBoardingViewModel extends BaseViewMode with OnBoardingViewModelInputs,OnBoardingViewModelOutputs{

  final StreamController _streamController = StreamController<SliderViewObject>();
  late final List<SliderObject> _list ;
  int _currentIndex = 0;

  @override
  void dispose() {
    _streamController.close();
  }

  @override
  void start() {
    _list = _getSliderData();
    postDataToView();
  }

  @override
  int goNext() {
    int nextIndex = ++_currentIndex;
    if(nextIndex == _list.length)
    {
      nextIndex = 0;
    }
    return nextIndex;
  }

  @override
  int goPrevious() {
    int previousIndex = --_currentIndex;
    if(previousIndex == -1)
    {
      previousIndex = _list.length -1;
    }
    return previousIndex;
  }

  @override
  void onPageChanged(int index) {
   _currentIndex = index;
   postDataToView();
  }

  @override
  // TODO: implement inputSliderViewObject
  Sink get inputSliderViewObject => _streamController.sink;

  @override
  // TODO: implement outputSliderViewObject
  Stream<SliderViewObject> get outputSliderViewObject => _streamController.stream.map((sliderViewObject) => sliderViewObject);
  // onBoarding private function
  void  postDataToView(){
    inputSliderViewObject.add(SliderViewObject(_list[_currentIndex], _currentIndex, _list.length));
  }

  List<SliderObject> _getSliderData() =>
      [
        SliderObject(AppString.onBoardingTitle1, AppString.onBoardingBody1, ImageAssets.onboardingLogo1),
        SliderObject(AppString.onBoardingTitle2, AppString.onBoardingBody2, ImageAssets.onboardingLogo2),
        SliderObject(AppString.onBoardingTitle3, AppString.onBoardingBody3, ImageAssets.onboardingLogo3),
        SliderObject(AppString.onBoardingTitle4, AppString.onBoardingBody4, ImageAssets.onboardingLogo4),
      ];
}
abstract class OnBoardingViewModelInputs{
  int goNext();
  int goPrevious();
  void onPageChanged(int index);
  Sink get inputSliderViewObject;
}
abstract class OnBoardingViewModelOutputs{
  Stream<SliderViewObject> get outputSliderViewObject;
}