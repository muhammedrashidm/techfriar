import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techfriar/Domain/trending/modals.dart';
import 'package:techfriar/app/globals/image_assets.dart';
import 'package:techfriar/presentation/home/page_widgets/question.dart';

import '../../app/globals/colors.dart';
import '../../app/trending_bloc/trending_bloc.dart';
import '../../data/trending/trending_questions_response/question.dart';

class ScreenTrending extends StatelessWidget {
  const ScreenTrending({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<TrendingBloc>(context).add(const TrendingEvent.started());
    return Scaffold(
      backgroundColor: MyColors.white,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 100,
                  height: 30,
                  child: Image.asset(ImageAssets.logo),
                ),
                const SizedBox(
                    width: 100,
                    child: Text(
                      "Trending",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )),
                const SizedBox(
                    width: 100,
                    child: Icon(Icons.menu_rounded, color: Colors.black))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: BlocBuilder<TrendingBloc, TrendingState>(
                builder: (context, state) {
                  if (state.isLoading) {
                    return const Center(
                      child: CupertinoActivityIndicator(),
                    );
                  }
                  if (state.hasError) {
                    return Center(
                      child: Text(state.errorMessage ?? "Unknown error"),
                    );
                  }
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 50,
                            child: CupertinoTextField(
                              prefix: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(Icons.search),
                              ),
                              decoration:
                                  BoxDecoration(color: MyColors.inputBg),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          SizedBox(
                              height: 130,
                              child: Image.asset(ImageAssets.heroTrending)),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              CircleAvatar(
                                backgroundColor: MyColors.myGray,
                                radius: 7,
                              ),
                              SizedBox(
                                width: 14,
                              ),
                              CircleAvatar(
                                backgroundColor: MyColors.primary,
                                radius: 7,
                              ),
                              SizedBox(
                                width: 14,
                              ),
                              CircleAvatar(
                                backgroundColor: MyColors.myGray,
                                radius: 7,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Trending Questions",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              Text("View all")
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          for (var item in state.trendingList)
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              child: QuestionWidget(item: item),
                            )
                          // Expanded(
                          //     child: ListView.separated(
                          //   itemBuilder: (context, i) {
                          //     final item = state.trendingList[i];
                          //     return QuestionWidget(item: item);
                          //   },
                          //   itemCount: state.trendingList.length,
                          //   separatorBuilder: (context, i) => const SizedBox(
                          //     height: 30,
                          //   ),
                          // ))
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
