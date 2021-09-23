import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_now/src/core/resources/app_colours.dart';
import 'package:weather_now/src/core/resources/app_text_style.dart';
import 'package:weather_now/src/core/resources/strings.dart';
import 'package:weather_now/src/core/utils/date_formatter.dart';
import 'package:weather_now/src/network/models/city_information.dart';
import 'package:weather_now/src/network/models/day_forecast.dart';
import 'package:weather_now/src/widgets/temperature_view.dart';
import 'package:weather_now/src/widgets/value_showcase.dart';

class WeatherDetail extends StatefulWidget {
  final CityInformation cityInformation;
  final DayForecast dayForecast;

  const WeatherDetail(
      {required this.cityInformation, required this.dayForecast, Key? key})
      : super(key: key);

  @override
  _WeatherDetailState createState() => _WeatherDetailState();
}

class _WeatherDetailState extends State<WeatherDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          floating: true,
          backgroundColor: AppColours.primary,
          expandedHeight: 200,
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            title: Text(
              "${widget.cityInformation.name}, ${widget.cityInformation.country}",
              textScaleFactor: 1,
            ),
            background: CachedNetworkImage(
              height: 60,
              width: 60,
              imageUrl: widget.dayForecast.weather[0].largeIconUrl,
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate.fixed(
            [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Chip(
                  backgroundColor: AppColours.primary,
                  label: Text(
                    DateFormatter.toReadableDate(widget.dayForecast.dateTime),
                    textAlign: TextAlign.center,
                    style: AppTextStyle.heroCaption,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: Row(
                  children: [
                    const Spacer(),
                    const Text(Strings.min),
                    TemperatureView(
                        temperature: widget.dayForecast.temperatures.min,
                        size: TempViewSize.large,
                        color: AppColours.primary),
                    const Spacer(),
                    TemperatureView(
                        temperature: widget.dayForecast.temperatures.max,
                        size: TempViewSize.large,
                        color: AppColours.primary),
                    const Text(Strings.max),
                    const Spacer()
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Chip(
                  backgroundColor: AppColours.accent,
                  label: Text(
                    widget.dayForecast.weather[0].description,
                    textAlign: TextAlign.center,
                    style: AppTextStyle.heroCaption,
                  ),
                ),
              ),
              ValueShowcase(
                  title: Strings.labelCloudCov,
                  value: widget.dayForecast.textCloudCoverage,
                  icon: Icons.cloud),
              ValueShowcase(
                  title: Strings.labelHumidity,
                  value: widget.dayForecast.textHumidity,
                  icon: Icons.water_damage_rounded),
              ValueShowcase(
                  title: Strings.labelWindSpeed,
                  value: widget.dayForecast.textWindSpeed,
                  icon: Icons.air_rounded),
              ValueShowcase(
                  title: Strings.labelPressure,
                  value: widget.dayForecast.textPressure,
                  icon: Icons.arrow_circle_down_rounded),
              const SizedBox(
                height: 16.0,
              )
            ],
          ),
        )
      ],
    ));
  }
}
