import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:weather_api_app/app/ui_kit/models/color_pallete.dart';

class WeatherIcon extends StatelessWidget {
  const WeatherIcon({
    super.key,
    required this.icon,
    this.scale,
  });

  final String icon;
  final double? scale;

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: scale ?? 1.5,
      child: CachedNetworkImage(
        imageUrl: "https://openweathermap.org/img/wn/$icon@2x.png",
        placeholder: (_, __) => Center(
          child: CircularProgressIndicator(
            color: ColorPallete.accent,
          ),
        ),
        errorWidget: (context, url, error) => const Icon(
          Icons.error,
        ),
      ),
    );
  }
}
