import 'package:flutter/material.dart';
import 'package:responsive_adaptive_admin_dashboard/views/widgets/all_expenses_item.dart';
import '../../models/all_expenses_item_model.dart';
import '../../utils/assets.dart';

class AllExpensesItemsListView extends StatefulWidget {
  const AllExpensesItemsListView({super.key});

  @override
  State<AllExpensesItemsListView> createState() =>
      _AllExpensesItemsListViewState();
}

class _AllExpensesItemsListViewState extends State<AllExpensesItemsListView> {
  final List<AllExpensesItemModel> items = const [
    AllExpensesItemModel(
      image: Assets.balance,
      title: 'Balance',
      date: 'April 2022',
      price: r'$20,129',
    ),
    AllExpensesItemModel(
      image: Assets.income,
      title: 'Income',
      date: 'April 2022',
      price: r'$20,129',
    ),
    AllExpensesItemModel(
      image: Assets.outcome,
      title: 'Expenses',
      date: 'April 2022',
      price: r'$20,129',
    ),
  ];

  int activeIndex = 0;

  void updateIndex(int index) {
    if (activeIndex != index) {
      setState(() {
        activeIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(0);
            },
            child: AllExpensesItem(
              allExpensesItemModel: items[0],
              isActive: activeIndex == 0,
            ),
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(1);
            },
            child: AllExpensesItem(
              allExpensesItemModel: items[1],
              isActive: activeIndex == 1,
            ),
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(2);
            },
            child: AllExpensesItem(
              allExpensesItemModel: items[2],
              isActive: activeIndex == 2,
            ),
          ),
        ),
      ],
    );
  }
}
