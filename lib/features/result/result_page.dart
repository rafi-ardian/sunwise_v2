import 'package:flutter/material.dart';
import 'package:sunwise_v2/core/theme/app_colors.dart';
import 'package:sunwise_v2/core/theme/app_texts.dart';
import 'package:sunwise_v2/core/utils/helpers.dart';

// ignore: must_be_immutable
class ResultPage extends StatelessWidget {
  ResultPage({super.key});
  int uvIndex = 12;

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
                    gradient: Helpers.uvIndexToColor(uvIndex.toString()),
                  ),
                ),
                if (uvIndex < 2) Image.asset('assets/images/Stars.png')
              ],
            )),
            Padding(
              padding: const EdgeInsets.only(
                  left: 16.0, top: 32.0, right: 16.0, bottom: 16.0),
              child: Column(
                children: [
                  // App Bar and uv indicator
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Positioned(
                        left: 0,
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.chevron_left,
                            color:
                                Helpers.uvIndexToTextColor(uvIndex.toString()),
                          ),
                        ),
                      ),

                      // Teks UV Index di tengah layar
                      Center(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 16),
                          decoration: BoxDecoration(
                            color: AppColors.whiteColor.withValues(alpha: 0.3),
                            borderRadius: BorderRadius.circular(99),
                            border: Border.all(color: AppColors.whiteColor),
                          ),
                          child: Text(
                            "UV Index is low",
                            style: TextStyleManager.regular16.copyWith(
                              color: Helpers.uvIndexToTextColor(
                                  uvIndex.toString()),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 58),
                  // Recommended container
                  Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                        color: AppColors.whiteColor.withValues(alpha: 0.2),
                        borderRadius: BorderRadius.circular(24),
                        border: Border.all(
                            color:
                                AppColors.whiteColor.withValues(alpha: 0.2))),
                    child: Column(
                      children: [
                        Text(
                          "Recommended to use outside",
                          style: TextStyleManager.regular20.copyWith(
                              color: Helpers.uvIndexToTextColor(
                                  uvIndex.toString())),
                        ),
                        const SizedBox(height: 24),
                        Row(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: AppColors.whiteColor,
                                  borderRadius: BorderRadius.circular(99),
                                  image: const DecorationImage(
                                    image: AssetImage(
                                      "assets/icons/lotion-svgrepo-com 1.png",
                                    ),
                                    scale: 3.5,
                                  )),
                            ),
                            const SizedBox(width: 20),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Sunscreen SPF 50+",
                                  style: TextStyleManager.semiBold12.copyWith(
                                      color: Helpers.uvIndexToTextColor(
                                          uvIndex.toString())),
                                ),
                                Text(
                                  "Protects the skin from harmful UVA\nand UVB rays.",
                                  style: TextStyleManager.regular12.copyWith(
                                      color: Helpers.uvIndexToTextColor(
                                          uvIndex.toString())),
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(height: 24),
                        Row(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: AppColors.whiteColor,
                                  borderRadius: BorderRadius.circular(99),
                                  image: const DecorationImage(
                                    image: AssetImage(
                                      "assets/icons/umbrella.png",
                                    ),
                                    scale: 3.5,
                                  )),
                            ),
                            const SizedBox(width: 20),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "UV-protection umbrella",
                                  style: TextStyleManager.semiBold12.copyWith(
                                      color: Helpers.uvIndexToTextColor(
                                          uvIndex.toString())),
                                ),
                                Text(
                                  "Adds extra shade and\nprotection outdoors.",
                                  style: TextStyleManager.regular12.copyWith(
                                      color: Helpers.uvIndexToTextColor(
                                          uvIndex.toString())),
                                  maxLines: 2,
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(height: 24),
                        Row(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: AppColors.whiteColor,
                                  borderRadius: BorderRadius.circular(99),
                                  image: const DecorationImage(
                                    image: AssetImage(
                                      "assets/icons/breamhat.png",
                                    ),
                                    scale: 3.5,
                                  )),
                            ),
                            const SizedBox(width: 20),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Wide-brimmed hat",
                                  style: TextStyleManager.semiBold12.copyWith(
                                      color: Helpers.uvIndexToTextColor(
                                          uvIndex.toString())),
                                ),
                                Text(
                                  "Reduces direct sun exposure\non the face and neck.",
                                  style: TextStyleManager.regular12.copyWith(
                                      color: Helpers.uvIndexToTextColor(
                                          uvIndex.toString())),
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(height: 24),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  // Estimated container
                  Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                        color: AppColors.whiteColor.withValues(alpha: 0.2),
                        borderRadius: BorderRadius.circular(24),
                        border: Border.all(
                            color:
                                AppColors.whiteColor.withValues(alpha: 0.2))),
                    child: Row(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              color: AppColors.whiteColor,
                              borderRadius: BorderRadius.circular(99),
                              image: const DecorationImage(
                                image: AssetImage(
                                  "assets/icons/mynaui_sun.png",
                                ),
                                scale: 3.5,
                              )),
                        ),
                        const SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Estimated time outside",
                              style: TextStyleManager.semiBold12.copyWith(
                                  color: Helpers.uvIndexToTextColor(
                                      uvIndex.toString())),
                            ),
                            Text(
                              "1 hour 20 minutes before you get\nsun burned",
                              style: TextStyleManager.regular12.copyWith(
                                  color: Helpers.uvIndexToTextColor(
                                      uvIndex.toString())),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  // Skin type container
                  Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                        color: AppColors.whiteColor.withValues(alpha: 0.2),
                        borderRadius: BorderRadius.circular(24),
                        border: Border.all(
                            color:
                                AppColors.whiteColor.withValues(alpha: 0.2))),
                    child: Row(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              color: AppColors.whiteColor,
                              borderRadius: BorderRadius.circular(99),
                              image: const DecorationImage(
                                image: AssetImage(
                                  "assets/icons/skintype.png",
                                ),
                                scale: 3.5,
                              )),
                        ),
                        const SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Your skin type",
                              style: TextStyleManager.semiBold12.copyWith(
                                  color: Helpers.uvIndexToTextColor(
                                      uvIndex.toString())),
                            ),
                            Text(
                              "Very fair skin, white; red or blond hair;\nlight-colored eyes;freckles likely",
                              style: TextStyleManager.regular12.copyWith(
                                  color: Helpers.uvIndexToTextColor(
                                      uvIndex.toString())),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
