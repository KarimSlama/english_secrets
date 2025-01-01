import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_state.freezed.dart';

@freezed
class CourseState<T> with _$CourseState<T> {
  const factory CourseState.initial() = _Initial;

  const factory CourseState.loading() = Loading;

  const factory CourseState.success(int index) = Success;

  const factory CourseState.error(String error) = Error;
}
