import 'package:flutter/material.dart';
import 'package:techfriar/Domain/trending/modals.dart';
import 'package:techfriar/app/globals/colors.dart';

class QuestionWidget extends StatelessWidget {
  const QuestionWidget({
    super.key,
    required this.item,
  });

  final QuestionModal item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      color: MyColors.inputBg,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: MyColors.primary.withOpacity(.3),
                width: 40,
                height: 40,
                child: const Center(
                  child: Text(
                    "Q.",
                    style: TextStyle(fontSize: 16, color: MyColors.primary),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Flexible(
                child: Text(
                  item.statement,
                  softWrap: true,
                  style: const TextStyle(color: Colors.black, fontSize: 16),
                ),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Volume:"),
                  Text(item.poolSize.toString()),
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Ends in:"),
                  Text(
                      "${item.endOn.hour}:${item.endOn.minute} ${item.endOn.year} ${item.endOn.month} ${item.endOn.day}"),
                ],
              ),
              Spacer(),
              Container(
                width: 100,
                height: 35,
                decoration:
                    BoxDecoration(border: Border.all(color: MyColors.primary)),
                child: Center(
                  child: Center(
                      child: Text(
                    "Predict",
                    style: TextStyle(color: MyColors.primary),
                  )),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
