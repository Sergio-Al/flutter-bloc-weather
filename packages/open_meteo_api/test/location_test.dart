import 'package:open_meteo_api/open_meteo_api.dart';
import 'package:test/test.dart';

void main() {
  group('Location', () {
    group('fromJson', () {
      test('returns correct Location object', () {
        expect(
          Location.fromJSON(<String, dynamic>{
            'id': 4887398,
            'name': 'Chicago',
            'latitude': 41.85003,
            'longitude': -87.65005,
          }),
          isA<Location>()
              .having((loc) => loc.id, 'id', 4887398)
              .having((loc) => loc.name, 'name', 'Chicago')
              .having((loc) => loc.latitude, 'latitude', 41.85003)
              .having((loc) => loc.longitude, 'longitude', -87.65005),
        );
      });
    });
  });
}
