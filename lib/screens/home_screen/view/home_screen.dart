import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';

import '../../../core/utils/colors.dart';
import '../../../core/utils/common_functions.dart';
import '../widget/card_content.dart';
import '../widget/pagination_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.homeBackground,
      drawer: const Icon(Icons.menu),
      appBar: AppBar(
        backgroundColor: AppColors.appBarBackground,
        centerTitle: true,
        title: const Text(
          'Home',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 12.0, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/icons/icon_boy.png',
                  width: 32,
                  height: 32,
                ),
                widthSpace(2),
                const Text(
                  'Hey,Ahmed',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                widthSpace(2),
                Image.asset('assets/icons/icon_hand.png'),
              ],
            ),
            heightSpace(24),
            Text(
              'Multi-Services for Your Real Estate Needs',
              style: TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              'Explore diverse real estate services for all your needs: property management, '
              'construction, insurance and more in one place.',
              style: TextStyle(
                fontSize: 15,
                color: AppColors.lightGrey,
              ),
            ),
            heightSpace(16),
            SizedBox(
              height: 170,
              child: Swiper(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return const ContentCard(
                    titleServices: 'Multi-Services for Your Real Estate Needs',
                    titleButton: 'Order',
                    imgOfServices: 'assets/images/card_img.png',
                  );
                },
                pagination: SwiperPagination(
                  builder: CustomPaginationBuilder(
                    activeSize: const Size(25, 6),
                    size: const Size(6, 6),
                    color: AppColors.primary,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
