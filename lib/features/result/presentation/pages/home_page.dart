import 'package:flutter/material.dart';
import 'package:sunwise_v2/core/theme/app_colors.dart';
import 'package:sunwise_v2/core/theme/app_texts.dart';
import 'package:sunwise_v2/core/utils/helpers.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key});
  int uvIndex = 8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Background
            Expanded(
                child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    gradient: Helpers.uvIndexToColor("2"),
                  ),
                ),
                if (uvIndex < 2) Image.asset('assets/images/Stars.png')
              ],
            )),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/icons/mdi_location.png',
                        width: 20,
                        color: Helpers.uvIndexToTextColor("2"),
                      ),
                      const SizedBox(width: 2),
                      Text(
                        "Bekasi, Indonesia",
                        style: TextStyleManager.regular14
                            .copyWith(color: Helpers.uvIndexToTextColor("2")),
                      ),
                    ],
                  ),
                  Image.asset(
                    Helpers.uvIndexToImagePath("2"),
                    width: 234,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 14, horizontal: 15),
                    margin: const EdgeInsets.only(bottom: 24),
                    decoration: BoxDecoration(
                      color: uvIndex >= 7
                          ? AppColors.whiteColor.withValues(alpha: 0.15)
                          : AppColors.whiteColor.withValues(alpha: 0.03),
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(
                          color: AppColors.whiteColor.withValues(alpha: 0.1)),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 152,
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: AppColors.whiteColor.withValues(
                                alpha: Helpers.uvIndexToInsideContainer("2")),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/icons/fluent_temperature-48-regular.png',
                                        width: 20,
                                        color: Helpers.uvIndexToTextColor("2"),
                                      ),
                                      Text(
                                        "26",
                                        style: TextStyleManager.regular14
                                            .copyWith(
                                                color:
                                                    Helpers.uvIndexToTextColor(
                                                        "2")),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/icons/ph_drop.png',
                                        width: 20,
                                        color: Helpers.uvIndexToTextColor("2"),
                                      ),
                                      Text(
                                        "78%",
                                        style: TextStyleManager.regular14
                                            .copyWith(
                                                color:
                                                    Helpers.uvIndexToTextColor(
                                                        "2")),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 14),
                              Column(
                                children: [
                                  Text(
                                    "UV Index",
                                    style: TextStyleManager.regular24.copyWith(
                                        color: Helpers.uvIndexToTextColor("2")),
                                  ),
                                  Text(
                                    "01",
                                    style: TextStyleManager.semiBold24.copyWith(
                                        color: Helpers.uvIndexToTextColor("2")),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 12),
                        // Button Analyze
                        InkWell(
                          // splashFactory:,
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.all(14),
                            decoration: BoxDecoration(
                                color:
                                    AppColors.whiteColor.withValues(alpha: 0.3),
                                borderRadius: BorderRadius.circular(99),
                                border:
                                    Border.all(color: AppColors.whiteColor)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Analyze UV Exposure",
                                  style: TextStyleManager.regular16.copyWith(
                                      color: Helpers.uvIndexToTextColor("2")),
                                ),
                                const SizedBox(width: 24),
                                Image.asset(
                                  'assets/icons/mdi_facial-recognition.png',
                                  width: 30,
                                  color: Helpers.uvIndexToTextColor("2"),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
