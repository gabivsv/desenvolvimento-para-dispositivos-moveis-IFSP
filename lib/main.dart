import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';


//Não fiz no google_maps_flutter pq começaram a me cobrar

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final serviceEnabled = await Geolocator.isLocationServiceEnabled();
  var permission = await Geolocator.checkPermission();

  if (!serviceEnabled) {
    await Geolocator.openLocationSettings();
  }

  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      return Future.error('Location permissions are denied');
    }
  }

  final placemarks = await placemarkFromCoordinates(-22.93432, -46.53711);

  if (placemarks.isNotEmpty) {
    final result = placemarks[0];
    debugPrint("${result.administrativeArea}");
    debugPrint("${result.locality}");
    debugPrint("${result.country}");
  }

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static final _stream = Geolocator.getPositionStream();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Minha Localização Atual')),
        body: Center(
          child: StreamBuilder<Position>(
            stream: _stream,
            builder: (context, positionData) {
              if (positionData.hasData) {
                final data = positionData.data;

                String lat = '0';
                String lon = '0';
                if (data != null) {
                  lat = data.latitude.toStringAsFixed(5);
                  lon = data.longitude.toStringAsFixed(5);
                }

                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.location_on, size: 60, color: Colors.blue),
                    Text(
                      'Latitude: $lat',
                      style: const TextStyle(fontSize: 18),
                    ),
                    Text(
                      'Longitude: $lon',
                      style: const TextStyle(fontSize: 18),
                    ),
                  ],
                );
              } else if (positionData.hasError) {
                return Text('Erro: ${positionData.error}');
              } else {
                return const CircularProgressIndicator();
              }
            },
          ),
        ),
      ),
    );
  }
}
