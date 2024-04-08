import 'package:flutter/material.dart';
import 'package:learn_flutter/03_starbucks_clone/presentation/tabs/components/starbucks_home/home_center_banner.dart';
import 'package:learn_flutter/common/data/data_source/photo_api.dart';
import 'package:learn_flutter/common/data/model/photo.dart';
import 'package:learn_flutter/common/data/repository/photo_repository/photo_repository.dart';
import 'package:learn_flutter/common/data/repository/photo_repository/photo_repository_impl.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:stroke_text/stroke_text.dart';

class StarBucksHome extends StatefulWidget {
  const StarBucksHome({super.key});

  @override
  State<StarBucksHome> createState() => _StarBucksHomeState();
}

class _StarBucksHomeState extends State<StarBucksHome> {
  PhotoRepository photoRepo = PhotoRepositoryImpl(api: PhotoApi(client: null));
  List<Photo> photoList = [];

  @override
  void initState() {
    super.initState();
    photoRepo.getPhotoList().then((value) {
      setState(() {
        photoList = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            expandedHeight: 150.0,
            floating: false,
            pinned: false,
            stretch: false,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/image/starbucks_main_banner.jpeg',
                fit: BoxFit.cover,
              ),
              title: const Padding(
                padding: EdgeInsets.only(right: 90),
                child: StrokeText(
                  text: '스타벅스 케이크와 함께\n2023년을 마무리해요!',
                  textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                  ),
                  strokeColor: Colors.white,
                  strokeWidth: 1,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Row(
                    children: [
                      const Spacer(),
                      SizedBox(
                        height: 20,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            minimumSize: const Size(0, 0),
                            padding: EdgeInsets.zero,
                          ),
                          onPressed: () {},
                          child: const Row(
                            children: [
                              Text(
                                '내용 보기',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(
                                Icons.arrow_right_alt,
                                color: Colors.black54,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            const Row(
                              children: [
                                Text(
                                  '1',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.grey,
                                  size: 18,
                                ),
                                Text(
                                  'until Green Level',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 15, 0),
                              child: LinearPercentIndicator(
                                lineHeight: 10.0,
                                percent: 0.5,
                                barRadius: const Radius.circular(20),
                                backgroundColor: Colors.black12,
                                progressColor: Colors.black87,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Row(
                        children: [
                          Text(
                            '4',
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text(
                              '/5',
                              style: TextStyle(
                                fontSize: 32,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Icon(
                              Icons.star,
                              color: Colors.grey,
                              size: 18,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                StickyHeader(
                  header: Container(
                    width: double.infinity,
                    height: 50.0,
                    color: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.mail_outline),
                            TextButton(
                              style: TextButton.styleFrom(
                                minimumSize: const Size(0, 0),
                                padding: const EdgeInsets.fromLTRB(5, 0, 10, 0),
                              ),
                              onPressed: () {},
                              child: const Text(
                                'What\'s New',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            const Icon(Icons.airplane_ticket_outlined),
                            TextButton(
                              style: TextButton.styleFrom(
                                minimumSize: const Size(0, 0),
                                padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                              ),
                              onPressed: () {},
                              child: const Text(
                                'Coupon',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                ),
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                        TextButton(
                          style: TextButton.styleFrom(
                            minimumSize: const Size(0, 0),
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          ),
                          onPressed: () {},
                          child: const Icon(Icons.notifications_outlined, color: Colors.black,),
                        )
                      ],
                    ),
                  ),
                  content: Column(
                    children: [
                      Column(
                        children: photoList.map((e) => HomeCenterBanner(photo: e)).toList(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}