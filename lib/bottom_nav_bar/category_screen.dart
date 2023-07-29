import 'package:flutter/material.dart';

import '../const/app_colors.dart';
import '../style/style.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(children: [
        Align(
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.only(left: 10),
              height: size.height / 4,
              width: size.width,
              decoration: const BoxDecoration(
                color: AppColors.deep_orange,
                image: DecorationImage(
                    image: AssetImage('assets/images/BG-Gradient.png'),
                    alignment: Alignment.bottomCenter,
                    fit: BoxFit.cover),
              ),
              child: SafeArea(
                child: Align(
                  alignment: Alignment.topCenter,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/images/Back Icon.png'),
                            const SizedBox(
                              width: 12,
                            ),
                            Text('Category', style: AppStyle.m12w)
                          ],
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Text(
                          'Choose What you need',
                          style: AppStyle.b32w,
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(padding: const EdgeInsets.only(top: 130),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: SingleChildScrollView(
              child: Container(
                padding:const EdgeInsets.only(left: 10,right: 5,top: 20),
                height: 500,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(34)),
                child: Column(children: [
                  Row(
                    children: [
                      Text(
                        'All',
                        style: AppStyle.m12b
                            .copyWith(decoration: TextDecoration.underline),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Text('Favourite', style: AppStyle.m12bt),
                      const SizedBox(
                        width: 30,
                      ),
                      Text('Recommended', style: AppStyle.m12bt)
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 15,top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              LongProductCard(
                                  background: AppColors.pink,
                                  title: 'KeyBoard',
                                  subtitle: '10 Products',
                                  image: 'assets/images/keyboard.png'),
                              LongProductCard(
                                  background: AppColors.purple,
                                  title: 'I phone 7 plus',
                                  subtitle: '12 products',
                                  image: 'assets/images/iphone 7 plus.png'),
                              LongProductCard(
                                  background: AppColors.red,
                                  title: 'Watch',
                                  subtitle: '20 Product',
                                  image: 'assets/images/watch.jpg')
                            ],
                          ),
                        ),
                        Column(
                          children: [
                              LongProductCard(
                                background: AppColors.red,
                                title: 'Cleaner',
                                subtitle: '20 Product',
                                image: 'assets/images/cleaner.png'),
                            LongProductCard(
                                background: AppColors.green,
                                title: 'HeadPhone',
                                subtitle: '15 Product',
                                image: 'assets/images/HeadPhone.jpg'),
                            LongProductCard(
                                background: AppColors.deep_orange,
                                title: 'Calculator',
                                subtitle: '10 products',
                                image: 'assets/images/Calculator.jpeg')
                          ],
                        )
                      ],
                    ),
                  )
                ]),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

class LongProductCard extends StatelessWidget {
  final Color background;
  final String title;
  final String subtitle;
  final String image;

  const LongProductCard(
      {Key? key,
      required this.background,
      required this.title,
      required this.subtitle,
      required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.only(bottom: 14,right: 10),
        width: 135,
        height: 135,
        decoration: BoxDecoration(
          color: background,
          borderRadius: BorderRadius.circular(34),
          border: Border.all(color: Colors.white, width: 10),
          boxShadow: [
            BoxShadow(
                blurRadius: 50,
                color: const Color(0xFF0B0C2A).withOpacity(.09),
                offset: const Offset(10, 10))
          ],
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const SizedBox(height: 16),
          Text(title, style: AppStyle.m12w),
          Text(subtitle, style: AppStyle.r10wt),
          Expanded(child: Image.asset(image)),
        ]),
      ),
    );
  }
}
