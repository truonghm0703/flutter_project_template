import 'package:scoped_model/scoped_model.dart';
import '../../data/weather_repo_implementation.dart';
import '../../model/Weather.dart';
import '../../repository/WeatherRepo.dart';

class SearchViewModel extends Model {
  static SearchViewModel _instance;

  static SearchViewModel getInstance() {
    if (_instance == null) {
      _instance = SearchViewModel();
    }
    return _instance;
  }

  WeatherRepo weatherRepo = WeatherRepoImpl.getInstance();
  Weather weatherSearched;
  bool isLoadingLocation = false;

  void getWeatherByLocation(String location) async {
    isLoadingLocation = true;
    notifyListeners();
    weatherSearched = await weatherRepo.getWeatherByLocation(location);
    isLoadingLocation = false;
    notifyListeners();
  }

  void favorite() async {
    weatherSearched.favorite = !weatherSearched.favorite;
    notifyListeners();
    await weatherRepo.saveWeather(weatherSearched);
  }

  static void destroyInstance() {
    _instance = null;
  }
}
