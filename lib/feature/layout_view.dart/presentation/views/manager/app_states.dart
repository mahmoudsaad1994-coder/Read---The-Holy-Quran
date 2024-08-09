abstract class AppStates {}

class AppStatesInitial extends AppStates {}

class ChangeThemeModeAppStates extends AppStates {}

class FetchDataLoadingAppStates extends AppStates {}

class FetchDataSuccessAppStates extends AppStates {}

class FetchDataFailureAppStates extends AppStates {
  final String errMessage;

  FetchDataFailureAppStates(this.errMessage);
}

class ChangeFontSizeAppStates extends AppStates {}
