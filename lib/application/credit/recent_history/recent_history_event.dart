part of 'recent_history_bloc.dart';

@freezed
class RecentHistoryEvent with _$RecentHistoryEvent {
  const factory RecentHistoryEvent.started() = _Started;
  const factory RecentHistoryEvent.fetchNext() = _FecthNext;
}
