import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_now/src/core/bloc/weather/weather_cubit.dart';
import 'package:weather_now/src/core/bloc/weather/weather_state.dart';
import 'package:weather_now/src/core/resources/app_colours.dart';
import 'package:weather_now/src/core/resources/app_text_style.dart';
import 'package:weather_now/src/core/resources/image_paths.dart';
import 'package:weather_now/src/core/resources/strings.dart';
import 'package:weather_now/src/network/models/city_information.dart';
import 'package:weather_now/src/network/models/day_forecast.dart';
import 'package:weather_now/src/network/models/forecast.dart';
import 'package:weather_now/src/pages/weather_detail.dart';
import 'package:weather_now/src/widgets/day_forecast_list_item.dart';
import 'package:weather_now/src/widgets/error_page_content.dart';
import 'package:weather_now/src/widgets/loading_page_content.dart';
import 'package:weather_now/src/widgets/weather_search_form.dart';

class WeatherHome extends StatefulWidget {
  const WeatherHome({Key? key}) : super(key: key);

  @override
  _WeatherHomeState createState() => _WeatherHomeState();
}

class _WeatherHomeState extends State<WeatherHome> {
  @override
  void initState() {
    super.initState();
  }

  void fetchWeather(String search, BuildContext context) {
    context.read<WeatherCubit>().getSevenDayForecast(search);
  }

  void initialise(BuildContext context) {
    context.read<WeatherCubit>().initialise();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocConsumer<WeatherCubit, WeatherState>(
            listener: (context, state) {
          state.maybeWhen(() => () {},
              locationNotFound: (location) =>
                  onLocationNotFound(location, context),
              orElse: () {});
        }, builder: (context, state) {
          return state.maybeWhen(() => Container(),
              fetchingWeather: () => loadingContent(),
              weatherFetched: (forecast) => mainContent(context, forecast),
              errorFetchingWeather: () => errorContent(context),
              orElse: () => searchContent(context));
        }),
      ),
    );
  }

  Widget loadingContent() {
    return const LoadingPageContent(Strings.titleLoadingWeather);
  }

  Widget errorContent(BuildContext context) {
    return ErrorPageContent(
      errorText: Strings.titleErrorLoadingWeather,
      actionButtonText: Strings.tryAgain,
      onClick: () => fetchWeather("Pretoria", context),
    );
  }

  Widget searchContent(BuildContext context) {
    return ListView(
      children: [
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 72.0),
                child: Text(
                  Strings.appTitle,
                  style:
                      AppTextStyle.heading.copyWith(color: AppColours.primary),
                ),
              ),
              Lottie.asset(pathAnimLanding, width: 300, height: 200),
              WeatherSearchForm(
                  onSubmit: (location) => fetchWeather(location, context)),
            ],
          ),
        ),
      ],
    );
  }

  Widget mainContent(BuildContext context, Forecast forecast) {
    return ListView(
      children: [
        Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(32.0, 32.0, 32.0, 16.0),
              child: Text(
                Strings.titleForecast,
                style: AppTextStyle.subHeading
                    .copyWith(fontSize: 20.0, color: AppColours.accent),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: Text(
                forecast.cityInformation!.name,
                style: AppTextStyle.subHeading,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: IconButton(
                  onPressed: () => initialise(context),
                  icon: const Icon(Icons.edit)),
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: forecast.daysInForecast,
                itemBuilder: (context, index) {
                  DayForecast dayForecast = forecast.dailyForecasts![index];
                  return DayForecastListItem(
                      dayForecast: dayForecast,
                      onClick: () => onViewForecastDetails(
                          dayForecast, forecast.cityInformation!, context));
                })
          ],
        ),
      ],
    );
  }

  void onViewForecastDetails(DayForecast dayForecast,
      CityInformation cityInformation, BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => WeatherDetail(
            cityInformation: cityInformation,
            dayForecast: dayForecast,
          ),
        ));
  }

  void onLocationNotFound(String location, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("${Strings.searchCityNotFound} $location")));
  }
}
