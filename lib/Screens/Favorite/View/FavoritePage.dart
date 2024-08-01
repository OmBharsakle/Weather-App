import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../Provider/WeatherProvider.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WeatherProvider weatherProviderTrue = Provider.of<WeatherProvider>(context, listen: true);

    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView.builder(
          itemCount: weatherProviderTrue.favoritesWeather.length,
          itemBuilder: (context, index) {
            List<String> parts = weatherProviderTrue.favoritesWeather[index].split('-');

            if (parts.length < 5) {
              return Text('Unexpected format: ${weatherProviderTrue.favoritesWeather[index]}');
            }

            String city = parts[0];
            String tem = parts[1];
            String country = parts[2];
            String condition = parts[3];
            String icon = parts[4];

            return Container(
              margin: const EdgeInsets.only(bottom: 15.0),
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                color: weatherProviderTrue.weatherModal!.current.isDay == 0
                    ? const Color(0xff29272f)
                    : const Color(0xffa2a1a6),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15),
                child: GestureDetector(
                  onTap: () {
                    print(icon);
                    print(city);
                    print(condition);
                    print(tem);
                    print(country);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        city,
                        style: const TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.w500,
                        ),overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 5),
                      Consumer<WeatherProvider>(
                        builder: (context, themeProvider, child) {
                          return Icon(
                            icon == '0' ? Icons.nights_stay : Icons.wb_sunny,
                            color: icon == '0' ? Colors.white : Colors.orange,
                            size: 60,
                          );
                        },
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "$tem°C",
                        style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        country,
                        style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        condition,
                        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
