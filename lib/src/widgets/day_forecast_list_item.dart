import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_now/src/core/resources/app_colours.dart';
import 'package:weather_now/src/core/resources/app_text_style.dart';
import 'package:weather_now/src/core/resources/image_paths.dart';
import 'package:weather_now/src/core/utils/date_formatter.dart';
import 'package:weather_now/src/network/models/day_forecast.dart';
import 'package:weather_now/src/widgets/temperature_view.dart';

class DayForecastListItem extends StatelessWidget {
  final DayForecast dayForecast;
  final Function onClick;

  const DayForecastListItem(
      {required this.dayForecast, required this.onClick, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Material(
        child: Ink(
          decoration: const BoxDecoration(
            color: AppColours.background,
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          child: InkWell(
            onTap: () => onClick(),
            splashColor: Colors.white,
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.blueAccent,
                    child: CachedNetworkImage(
                      height: 60,
                      width: 60,
                      imageUrl: dayForecast.weather[0].mediumIconUrl,
                      placeholder: (context, url) =>
                          Lottie.asset(pathAnimLoader, width: 60, height: 60),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    children: [
                      TemperatureView(
                          temperature: dayForecast.temperatures.max,
                          size: TempViewSize.medium,
                          color: AppColours.primary),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 5.0),
                        color: Colors.blueAccent,
                        width: 30.0,
                        height: 2.0,
                      ),
                      TemperatureView(
                          temperature: dayForecast.temperatures.min,
                          size: TempViewSize.medium,
                          color: AppColours.primary)
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    DateFormatter.toDayOfWeek(dayForecast.dateTime),
                    style: AppTextStyle.listItemTitle,
                  ),
                ),
                Expanded(child: Container()),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.chevron_right_rounded,
                    color: AppColours.primary,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
