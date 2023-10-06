

class ApiSettings {
  static const _API_URL = 'https://tulineapp.almirsystem.com/api/';
  static const HOME = _API_URL + 'home';
  static const AREA = _API_URL + 'areas';
  static const SECTION = _API_URL + 'sections';
  static const SERVICES = _API_URL + 'services';
  static const MY_FAVORITE = _API_URL + 'favorite-services';
  static const PRIVACY = _API_URL + 'privacy';
  static const FAQs = _API_URL + 'faqs';
  static const ABOUT = _API_URL + 'aboutApp';


  static const LOGIN = _API_URL + 'login';
  static const REGISTER = _API_URL + 'register';
  // Use a function to create the HOME URL with query parameters
  static String homeUrl(areaId) {
    if (areaId != null) {
      return '$HOME?area_id=$areaId';
    }
    return HOME;
  }

}