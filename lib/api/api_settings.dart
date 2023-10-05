

class ApiSettings {
  static const _API_URL = 'https://tulineapp.almirsystem.com/api/';
  static const HOME = _API_URL + 'home';

  // Use a function to create the HOME URL with query parameters
  static String homeUrl(areaId) {
    if (areaId != null) {
      return '$HOME?area_id=$areaId';
    }
    return HOME;
  }

}