import 'package:digiresto/application/credit/recent_history/recent_history_bloc.dart';
import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/injection.dart';
import 'package:digiresto/presentation/core/i10n/l10n.dart';
import 'package:digiresto/presentation/core/widgets/custom_scafold.dart';
import 'package:digiresto/presentation/core/widgets/stack_with_progress.dart';
import 'package:digiresto/presentation/credit/widgets/payment_history_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RecentHistoryPage extends StatelessWidget {
  const RecentHistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RecentHistoryBloc>(
      create: (context) =>
          getIt<RecentHistoryBloc>()..add(RecentHistoryEvent.started()),
      child: RecentHistoryWidget(),
    );
  }
}

class RecentHistoryWidget extends StatefulWidget {
  const RecentHistoryWidget({Key? key}) : super(key: key);

  @override
  _RecentHistoryWidgetState createState() => _RecentHistoryWidgetState();
}

class _RecentHistoryWidgetState extends State<RecentHistoryWidget> {
  @override
  Widget build(BuildContext context) {
    I10n i10n = I10n.of(context);

    return BlocConsumer<RecentHistoryBloc, RecentHistoryState>(
      listener: (context, state) {},
      builder: (context, state) {
        return CustomScafold(
          showBackButton: true,
          title: i10n.credit_title_2,
          body: StackWithProgress(
            isLoading: state.isLoading,
            children: [
              if (state.listData.isNotEmpty)
                ListView(padding: EdgeInsets.zero, children: [
                  Divider(
                    thickness: 12,
                    color: AppColors.dividerColor,
                  ),
                  ...state.listData
                      .map((element) => PaymentHistoryWidget(element))
                      .toList(),
                ]),
              if (state.listData.isEmpty)
                Center(
                  child: Text(i10n.history_empty_title),
                )
            ],
          ),
        );
      },
    );
  }
}
